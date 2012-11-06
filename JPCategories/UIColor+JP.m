/* Part of JPGeneral repository, Jon889: https://github.com/Jon889/JPGeneral
 Copyright (c) 2011 Jonathan Bailey
 May be modified and used in any project as long as all comments, including this one, remain.*/
#import "UIColor+JP.h"
#if TARGET_OS_IPHONE
@implementation UIColor (JP)
+ (UIColor *)colorWithR:(CGFloat)red G:(CGFloat)green B:(CGFloat)blue A:(CGFloat)alpha {
	return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}
@end
#endif