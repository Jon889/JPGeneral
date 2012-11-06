//
//  UIViewController+JP.h
//  StackAsk
//
//  Created by Jonathan Bailey on 04/08/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#if TARGET_OS_IPHONE
@interface UIViewController (UIViewController_JP)
-(void)dismissModalViewControllerWithAnimation;
-(void)dismissModalViewControllerWithoutAnimation;
-(void)navigationControllerWillPopAnimated:(BOOL)animated;
@end
#endif