//
//  RadioGroupView.h
//  RadioButtonProj
//
//  Created by lichanghong on 2/16/17.
//  Copyright © 2017 lichanghong. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol RadioGroupDelegate <NSObject>
-(void)radioGroupSelectedAtIndex:(NSUInteger)index;
@end


@interface RadioGroupView : UIView

@property (nonatomic,weak)id<RadioGroupDelegate>delegate;

@end
