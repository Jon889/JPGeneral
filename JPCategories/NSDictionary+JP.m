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
@end
