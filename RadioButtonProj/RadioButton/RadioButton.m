//
//  RadioButton.m
//  RadioButton
//
//  Created by lichanghong on 2017/02/16.
//  Copyright 2017 lichanghong. All rights reserved.
//

#import "RadioButton.h"

@interface RadioButton()
@end

@implementation RadioButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initViewWithFrame:frame];
    }
    return self;
}

-(void)initViewWithFrame:(CGRect)frame {
    // Setup container view
    self.frame = frame;
    self.backgroundColor = [UIColor clearColor];
    self.adjustsImageWhenHighlighted = NO;
    [self setImage:[UIImage imageNamed:@"RadioButton-Unselected"] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:@"RadioButton-Selected"] forState:UIControlStateSelected];
    self.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    [self setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
    [self setTitle:@"功能问题" forState:UIControlStateNormal];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}


@end
