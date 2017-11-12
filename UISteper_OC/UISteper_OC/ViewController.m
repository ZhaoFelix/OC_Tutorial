//
//  ViewController.m
//  UISteper_OC
//
//  Created by Felix on 2017/11/12.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize stepper = _stepper;
@synthesize segement = _segement;

- (void)viewDidLoad {
    [super viewDidLoad];
    _stepper = [[UIStepper alloc]init];
    //步进器的宽高是不可变更的
    _stepper.frame = CGRectMake(100, 100, 80, 40);
    _stepper.minimumValue = 0;
    _stepper.maximumValue = 10;
    _stepper.value = 0;
    _stepper.stepValue = 1;//每次向前或向后的步伐值
    _stepper.autorepeat = YES;//是否可以重复响应事件
    _stepper.continuous = YES;//是否将步进结果通过事件函数响应出来
    [_stepper addTarget:self action:@selector(stepperChange:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_stepper];
    
    _segement = [[UISegmentedControl alloc]init];
    //该控件的宽度可变，高度可变
    _segement.frame = CGRectMake(100, 200, 180, 40);
    [_segement insertSegmentWithTitle:@"item1" atIndex:0 animated:NO];
    [_segement insertSegmentWithTitle:@"item2" atIndex:1 animated:NO];
    _segement.selectedSegmentIndex = 1;//设置默认被选中的索引
    [_segement addTarget:self action:@selector(segementChange) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_segement];
    
}

-(void) stepperChange:(UIStepper *)stepper {
    NSLog(@"%f",stepper.value);
}
-(void)segementChange{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
