//
//  NSDate+JP.m
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 10/04/2011.
//  Copyright 2011 JBProjects. All rights reserved.
//

#import "NSDate+JP.h"


@implementation NSDate (JP)
-(BOOL)isEarlierThanDate:(NSDate *)otherDate {
    return [self earlierDate:otherDate] == self;
}
-(BOOL)isLaterThanDate:(NSDate *)otherDate {
    return [self laterDate:otherDate] == self;
}
-(BOOL)isInPast {
    return [self isEarlierThanDate:[NSDate date]];
}
-(BOOL)isInFuture {
    return [self isLaterThanDate:[NSDate date]];
}
@end
