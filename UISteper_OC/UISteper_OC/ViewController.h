//
//  ViewController.h
//  UISteper_OC
//
//  Created by Felix on 2017/11/12.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义布进器对象
    UIStepper* _stepper;
    //定义一个分栏控制器
    UISegmentedControl* _segement;
}
@property (retain,nonatomic) UIStepper* stepper;
@property (retain,nonatomic) UISegmentedControl* segement;

@end

