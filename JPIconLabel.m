//
//  JPIconLabel.m
//  StackAsk
//
//  Created by Jonathan Bailey on 24/09/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "JPIconLabel.h"

@implementation JPIconLabel
@synthesize textLabel, imageView;
@synthesize touchDown, touchUpInside, touchUpOutside;
- (void)resizeFontForLabel:(UILabel*)aLabel maxSize:(int)maxSize minSize:(int)minSize { 
    UIFont *font = aLabel.font;
    if (!font) {
        font = [UIFont systemFontOfSize:maxSize];
    }
    for(int i = maxSize; i >= minSize; i--) {
        font = [font fontWithSize:i];
        CGSize constraintSize = CGSizeMake(aLabel.frame.size.width, MAXFLOAT);
        
        CGSize labelSize = [aLabel.text sizeWithFont:font constrainedToSize:constraintSize lineBreakMode:UILineBreakModeWordWrap];
        if(labelSize.height <= aLabel.frame.size.height)
            break;
    }
    aLabel.font = font;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addObserver:self forKeyPath:@"textLabel.text" options:0 context:nil];
        EGOImageView *image = [[EGOImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.height, self.frame.size.height)];
        [image setContentMode:UIViewContentModeScaleAspectFit];
        self.imageView = image;
        [image release];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxY(image.frame) + 2, 0, self.frame.size.width - image.frame.size.width - 2, self.frame.size.height)];
        [label setBackgroundColor:[UIColor clearColor]];
        [label setTextColor:[UIColor whiteColor]];
        [label setNumberOfLines:2];
        [label setFont:[UIFont boldSystemFontOfSize:label.font.pointSize]];
        [label setShadowColor:[UIColor colorWithRed:(0x45 / 255.0) green:(0x4E / 255.0) blue:(0x62 / 255.0) alpha:1.0]];
        [label setShadowOffset:CGSizeMake(0, -1)];
        [label setAdjustsFontSizeToFitWidth:YES];
        self.textLabel = label;
        [label release];
        [self addSubview:self.imageView];
        [self addSubview:self.textLabel];
    }
    return self;
}
-(void)setFrame:(CGRect)frame {
    CGRect frameToSet = frame;
    if (frame.size.width > 190) {
        frameToSet = CGRectSetWidth(frameToSet, 190);
    }
    [super setFrame:frameToSet];
    [self resizeFontForLabel:self.textLabel maxSize:17 minSize:10];
}
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if ([keyPath isEqualToString:@"textLabel.text"]) {
        [self.textLabel sizeToFit];
        [self.textLabel setFrame:CGRectSetHeight(self.textLabel.frame, self.frame.size.height)];
    }
}
-(void)layoutSubviews {
    self.bounds = CGRectSetWidth(self.bounds, self.textLabel.frame.size.width + self.imageView.frame.size.width);   
    self.frame = CGRectSetX(self.frame, roundf(self.frame.origin.x)-(self.frame.size.height/5));
    if (self.frame.origin.x < 0) {
        [self setFrame:CGRectSetX(self.frame, 0)];
    }
    if (self.frame.size.width > self.superview.frame.size.width) {
        [self setFrame:CGRectSetWidth(self.frame, self.superview.frame.size.width)];
    }
    self.textLabel.frame = CGRectSetWidth(self.textLabel.frame, self.frame.size.width - self.imageView.frame.size.width);
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if (touchDown) {
        touchDown(touches, event);    
    }
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    if (CGRectContainsPoint(self.bounds, [(UITouch *)[touches anyObject] locationInView:self])) {
        if (touchUpInside) {
            touchUpInside(touches, event);
        }
    } else {
        if (touchUpOutside) {
            touchUpOutside(touches, event);
        }
    }
}
-(void)dealloc {
    [textLabel release];
    [imageView release];
    [touchDown release];
    [touchUpInside release];
    [touchUpOutside release];
    [self removeObserver:self forKeyPath:@"textLabel.text"];
}
@end
