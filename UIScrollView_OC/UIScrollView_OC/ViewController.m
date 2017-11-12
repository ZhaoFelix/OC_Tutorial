//
//  ViewController.m
//  UIScrollView_OC
//
//  Created by Felix on 2017/11/12.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView* scrollView = [[UIScrollView alloc]init];
    scrollView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    scrollView.pagingEnabled = YES;//是否按照整页滚动
    scrollView.scrollEnabled = YES;//是否可以开启滚动效果
    scrollView.bounces = YES;//是否可以边缘弹动效果
    scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width*5,[UIScreen mainScreen].bounds.size.height);//设置画布的大小
    //设置横向和纵向的弹动效果
    scrollView.alwaysBounceVertical = YES;
    scrollView.alwaysBounceHorizontal = YES;
    //设置滚动条
    scrollView.showsVerticalScrollIndicator = YES;
    scrollView.showsHorizontalScrollIndicator = YES;
    scrollView.backgroundColor = [UIColor yellowColor];
    
    for (int i=0; i<5; i++) {
        NSString* strName = [NSString stringWithFormat:@"%d.jpg",i+1];
        UIImage* image = [UIImage imageNamed:strName];
        UIImageView* imageView = [[UIImageView alloc]initWithImage:image];
        imageView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width*i, 0, [UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height);
        [self.view addSubview:imageView];
    }
    [self.view addSubview:scrollView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
