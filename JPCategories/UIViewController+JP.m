//
//  UIViewController+JP.m
//  StackAsk
//
//  Created by Jonathan Bailey on 04/08/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UIViewController+JP.h"

@implementation UIViewController (UIViewController_JP)
-(void)dismissModalViewControllerWithAnimation {
    [self dismissModalViewControllerAnimated:YES];
}
-(void)dismissModalViewControllerWithoutAnimation {
    [self dismissModalViewControllerAnimated:NO];
}
-(void)navigationControllerWillPopAnimated:(BOOL)animated {
    //to be overriden
}
@end
