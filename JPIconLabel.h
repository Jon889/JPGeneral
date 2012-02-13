//
//  JPIconLabel.h
//  StackAsk
//
//  Created by Jonathan Bailey on 24/09/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EGOImageView.h"
typedef void (^TouchBlock)(NSSet *, UIEvent *);
@interface JPIconLabel : UIView
@property (nonatomic, retain) UILabel *textLabel;
@property (nonatomic, retain) EGOImageView *imageView;
@property (nonatomic, copy) TouchBlock touchDown;
@property (nonatomic, copy) TouchBlock touchUpInside;
@property (nonatomic, copy) TouchBlock touchUpOutside;

@end
