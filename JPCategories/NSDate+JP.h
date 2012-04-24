//
//  NSDate+JP.h
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 10/04/2011.
//  Copyright 2012 JBProjects. All rights reserved.
//

@interface NSDate (JP)
-(BOOL)isEarlierThanDate:(NSDate *)otherDate;
-(BOOL)isLaterThanDate:(NSDate *)otherDate;
-(BOOL)isInPast;
-(BOOL)isInFuture;
@end
