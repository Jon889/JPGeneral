//
//  UIViewController+JP.h
//  StackAsk
//
//  Created by Jonathan Bailey on 04/08/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (UIViewController_JP)
-(void)dismissModalViewControllerWithAnimation;
-(void)dismissModalViewControllerWithoutAnimation;
-(void)navigationControllerWillPopAnimated:(BOOL)animated;
@end
