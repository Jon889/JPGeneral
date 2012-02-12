//
//  ISMethodSwizzle.h
//  StackAsk
//
//  Created by Jonathan Bailey on 12/02/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import <objc/runtime.h>
#ifndef exchangePrefix 
    #define exchangePrefix _MS
#endif
#define exchangePrefixString macroToNSString(exchangePrefix)

#define concat_(a,b) a##b
#define concat(a,b) concat_(a, b)
#define exchange(name) concat(exchangePrefix, name)

#define exchange_super(name) [self concat(exchangePrefix, name)]


void Swizzle(Class c, SEL orig, SEL new);

#define LoadExchanger \
    NSAutoreleasePool *ap = [[NSAutoreleasePool alloc] init]; \
    int unsigned numMethods; \
    Method *methods = class_copyMethodList([self class], &numMethods);\
    for (int i = 0; i < numMethods; i++) {\
        SEL currentSelector = method_getName(methods[i]);\
        NSString *currentSelectorName = NSStringFromSelector(currentSelector);\
        if ([currentSelectorName hasPrefix:exchangePrefixString]) {\
            NSString *superMethodName = [currentSelectorName stringByReplacingCharactersInRange:NSMakeRange(0, exchangePrefixString.length) withString:@""];\
            Swizzle([self class], NSSelectorFromString(superMethodName), currentSelector);\
            NSLog(@"exchanged method on: %@ : %@ with: %@", [self class], currentSelectorName, superMethodName);\
        }\
    }\
    free(methods);\
    [ap drain];\

#define LoadExchangerMethod \
    +(void)load {\
        LoadExchanger\
    }\

