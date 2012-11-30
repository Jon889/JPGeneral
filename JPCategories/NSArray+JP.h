//
//  NSArray+JP.h
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 10/04/2011.
//  Copyright 2011 JBProjects. All rights reserved.
//

@interface NSArray (JP)
@property (readonly) NSUInteger count;
-(NSArray *)arrayByGroupingWithKey:(NSString *)kv;
@end
