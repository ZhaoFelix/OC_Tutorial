//
//  ViewController.m
//  Runtime2_OC
//
//  Created by Felix on 2017/11/11.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL * url = [NSURL URLWithString:@"www.baidu.com/中文"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSLog(@"%@",request);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
