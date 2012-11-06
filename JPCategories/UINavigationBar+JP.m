//
//  UINavigationBar+JP.m
//  StackAsk
//
//  Created by Jonathan Bailey on 12/08/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//
#if TARGET_OS_IPHONE
#import "UINavigationBar+JP.h"
#import <objc/runtime.h>
@implementation UINavigationBar (JP)
+(void)load {
    method_exchangeImplementations(class_getInstanceMethod([UINavigationBar class], @selector(popNavigationItemAnimated:)), class_getInstanceMethod([UINavigationBar class], @selector(_SApopNavigationItemAnimated:)));
}

-(UINavigationItem *)_SApopNavigationItemAnimated:(BOOL)animated {
    if ([self.delegate isKindOfClass:[UINavigationController class]]) {
        [((UINavigationController *)self.delegate).topViewController navigationControllerWillPopAnimated:animated];
    }

    return [self _SApopNavigationItemAnimated:animated];
}
@end
#endif