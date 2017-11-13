//
//  ViewController.m
//  Masonary_OC
//
//  Created by Felix on 2017/11/13.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView*  myView = [[UIView alloc]init];
    self.view.backgroundColor = [UIColor redColor];
    myView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:myView];
    [myView mas_makeConstraints:^(MASConstraintMaker *make){
        //添加上下左右的约束为10
        make.left.top.equalTo(@10);
        make.right.bottom.equalTo(@-10);
    }];
    //mas_makeConstraints 给控件设置布局，参数为block
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
