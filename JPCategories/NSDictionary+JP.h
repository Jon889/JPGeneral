//
//  NSDictionary+JP.h
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 10/04/2011.
//  Copyright 2012 JBProjects. All rights reserved.
//

@interface NSDictionary (JP)
-(NSString *)stringForKey:(id)key;
-(NSArray *)arrayForKey:(id)key;
-(NSDictionary *)dictionaryForKey:(id)key;
-(NSData *)dataForKey:(id)key;
-(NSInteger)integerForKey:(id)key;
-(float)floatForKey:(id)key;
-(double)doubleForKey:(id)key;
-(BOOL)boolForKey:(id)key;
-(NSURL *)URLForKey:(id)key;

-(id)objectForKeyPath:(NSString *)path;

@end
