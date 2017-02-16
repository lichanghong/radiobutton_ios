//
//  ViewController.m
//  RadioButtonProj
//
//  Created by lichanghong on 2/16/17.
//  Copyright © 2017 lichanghong. All rights reserved.
//

#import "ViewController.h"
#import "RadioGroupView.h"

@interface ViewController ()<RadioGroupDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
 
    RadioGroupView *groupv = [[RadioGroupView alloc] initWithFrame:CGRectMake(0, 10, 280, 400)];
    groupv.delegate = self;
    [self.view addSubview:groupv];
    
//    UIButton *label1 =[[UIButton alloc] initWithFrame:CGRectMake(40, 30, 60, 20)];
//    label1.tag = 100;
//    label1.backgroundColor = [UIColor clearColor];
//    [label1 setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
//    [label1 setTitle:@"Red" forState:UIControlStateNormal];
//    [label1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [label1 addTarget:self action:@selector(HandleAction:) forControlEvents:UIControlEventTouchUpInside];
//    [container addSubview:label1];
//    
//    UIButton *label2 =[[UIButton alloc] initWithFrame:CGRectMake(40, 60, 60, 20)];
//    label2.tag = 101;
//    label2.backgroundColor = [UIColor clearColor];
//    [label2 setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
//    [label2 setTitle:@"Green" forState:UIControlStateNormal];
//    [label2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [label2 addTarget:self action:@selector(HandleAction:) forControlEvents:UIControlEventTouchUpInside];
//    [container addSubview:label2];
//    
//    UIButton *label3 =[[UIButton alloc] initWithFrame:CGRectMake(40, 90, 60, 20)];
//    label3.tag = 102;
//    label3.backgroundColor = [UIColor clearColor];
//    [label3 setContentHorizontalAlignment:UIControlContentHorizontalAlignmentLeft];
//    [label3 setTitle:@"Blue" forState:UIControlStateNormal];
//    [label3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [label3 addTarget:self action:@selector(HandleAction:) forControlEvents:UIControlEventTouchUpInside];
//    [container addSubview:label3];
    
 
    [super viewDidLoad];
}

- (void)radioGroupSelectedAtIndex:(NSUInteger)index
{
    NSLog(@"changed to %d ",index);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
