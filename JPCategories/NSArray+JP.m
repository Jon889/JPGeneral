//
//  NSArray+JP.m
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 10/04/2011.
//  Copyright 2011 JBProjects. All rights reserved.
//

#import "NSArray+JP.h"


@implementation NSArray (JP)
@dynamic count;
-(NSArray *)arrayByGroupingWithKey:(NSString *)kv {
	NSMutableDictionary *groups = [NSMutableDictionary dictionary];
	for (id obj in self) {
		NSString *groupingValue = [obj valueForKey:kv];
		NSMutableArray *group = [groups objectForKey:groupingValue];
		if (!group) {
			group = [NSMutableArray array];
			[groups setObject:group forKey:groupingValue];
		}
		[group addObject:obj];
	}
	return [groups allValues];
}

@end
