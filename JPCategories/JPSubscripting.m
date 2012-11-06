//
//  JPSubscripting.m
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 10/04/2011.
//  Copyright 2011 JBProjects. All rights reserved.
//

#import "JPSubscripting.h"

#if ENABLE_SUBSCRIPTING_FOR_OLD_SDK == 1

@implementation NSDictionary (JP)
- (id)objectForKeyedSubscript:(id)key {
	return [self objectForKey:key];
}
@end

@implementation NSMutableDictionary (JPSubscripting)
- (void)setObject:(id)obj forKeyedSubscript:(id)key {
	[self setObject:obj forKey:key];
}
@end

@implementation NSArray (JPSubscripting)
- (id)objectAtIndexedSubscript:(NSUInteger)index {
	return [self objectAtIndex:index];
}
@end

@implementation NSMutableArray (JPSubscripting)
- (void)setObject:(id)object atIndexedSubscript:(NSUInteger)index {
	[self setObject:object atIndex:index];
}
@end

#endif