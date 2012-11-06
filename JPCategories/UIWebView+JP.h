//
//  UIWebView+JP.h
//  JPGeneral - JPCategories
//
//  Created by Jonathan Bailey on 10/04/2011.
//  Copyright 2012 JBProjects. All rights reserved.
//

#if TARGET_OS_IPHONE
@interface UIWebView (JP)
- (void)loadURLString:(NSString *)request;
- (void)evaluateJavaScriptFromString:(NSString *)script;
@end
#endif