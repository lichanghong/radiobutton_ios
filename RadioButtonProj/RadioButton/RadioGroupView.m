//
//  RadioGroupView.m
//  RadioButtonProj
//
//  Created by lichanghong on 2/16/17.
//  Copyright © 2017 lichanghong. All rights reserved.
//

#import "RadioGroupView.h"
#import "RadioButton.h"

@implementation RadioGroupView
{
    NSMutableArray *_radioButtonArr;
    NSMutableArray *_titleArr;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initView];
    }
    return self;
}

-(void)initView
{
    CGFloat marginT = 5;
    _radioButtonArr = [NSMutableArray array];
    _titleArr = [NSMutableArray arrayWithObjects:@"功能问题",@"体验建议",@"BUG反馈", nil];
    for (int i=0; i<3; i++) {
        RadioButton *rb = [[RadioButton alloc] initWithFrame:CGRectMake(0, 22*i+marginT*i, 200, 22)];
        [self addSubview:rb];
        [rb addTarget:self action:@selector(handleAction:) forControlEvents:UIControlEventTouchUpInside];
        [_radioButtonArr addObject:rb];
        [rb setTitle:_titleArr[i] forState:UIControlStateNormal];
        rb.tag = 1000+i;
        if (i==0) {
            [rb setSelected:YES];
        }
    }
}

- (void)handleAction:(UIButton *)button
{
    for (RadioButton *btn in _radioButtonArr) {
        [btn setSelected:(btn == button)];
    }
    [self.delegate radioGroupSelectedAtIndex:button.tag-1000];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
