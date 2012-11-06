//
//  UIWebView+JP.m
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 10/04/2011.
//  Copyright 2011 JBProjects. All rights reserved.
//

#import "UIWebView+JP.h"

#if TARGET_OS_IPHONE
@implementation UIWebView (JP)
- (void)loadURLString:(NSString *)requestString {
    [self loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:requestString]]];
}

-(void)evaluateJavaScriptFromString:(NSString *)script {
    [self stringByEvaluatingJavaScriptFromString:script];
}
@end
#endif