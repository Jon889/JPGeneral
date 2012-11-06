//
//  NSArray+JP.m
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 10/04/2011.
//  Copyright 2011 JBProjects. All rights reserved.
//

#import "NSDictionary+JP.h"


@implementation NSDictionary (JP)
-(NSString *)stringForKey:(id)key {
    id obj = [self objectForKey:key];
    if ([obj isKindOfClass:[NSString class]]) {
        return obj;
    }
    return nil;
}
-(NSArray *)arrayForKey:(id)key {
    id obj = [self objectForKey:key];
    if ([obj isKindOfClass:[NSArray class]]) {
        return obj;
    }
    return nil;
}
-(NSDictionary *)dictionaryForKey:(id)key {
    id obj = [self objectForKey:key];
    if ([obj isKindOfClass:[NSDictionary class]]) {
        return obj;
    }
    return nil;
}
-(NSData *)dataForKey:(id)key{
    id obj = [self objectForKey:key];
    if ([obj isKindOfClass:[NSData class]]) {
        return obj;
    }
    return nil;
}
-(NSInteger)integerForKey:(id)key {
    return [[self objectForKey:key] integerValue];
}
-(float)floatForKey:(id)key {
    return [[self objectForKey:key] floatValue];    
}
-(double)doubleForKey:(id)key {
    return [[self objectForKey:key] doubleValue];
}
-(BOOL)boolForKey:(id)key {
    return [[self objectForKey:key] boolValue];
}
-(NSURL *)URLForKey:(id)key {
    id obj = [self objectForKey:key];
    if ([obj isKindOfClass:[NSURL class]]) {
        return obj;
    }
    return nil;   
}

-(id)objectForKeyPath:(NSString *)path {
    NSArray *comps = [path componentsSeparatedByString:@"."];
    id object = self;
    for (NSString *comp in comps) {
        if ([comp hasSuffix:@"]"]) {
            NSRange range = [comp rangeOfString:@"[" options:NSBackwardsSearch];
            if ([object respondsToSelector:@selector(objectForKey:)]) {
                object = [object objectForKey:[comp substringToIndex:range.location]];
            } else {
                return nil;
            }
            
            NSUInteger start = range.location + range.length;
            NSString *index = [comp substringWithRange:NSMakeRange(start, comp.length - start - 1)];
            if ([object respondsToSelector:@selector(objectAtIndex:)]) {
                object = [object objectAtIndex:[index intValue]];
            } else {
                return nil;
            }

            
        } else {
            if ([object respondsToSelector:@selector(objectForKey:)]) {
                object = [object objectForKey:comp];
            } else {
                return nil;
            }

        }
    }
    return object;
}

@end
