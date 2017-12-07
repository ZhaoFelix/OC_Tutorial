//
//  ViewController.m
//  MD5
//
//  Created by Felix on 2017/12/7.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"
#import "MD5.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str = @"加密测试";
    NSString *str1 = [MD5 md5:str];
    NSLog(@"str = %@,str1 = %@",str,str1);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
