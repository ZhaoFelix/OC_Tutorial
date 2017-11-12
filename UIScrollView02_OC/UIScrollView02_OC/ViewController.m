//
//  ViewController.m
//  UIScrollView02_OC
//
//  Created by Felix on 2017/11/12.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scrollView = _scrollView;
- (void)viewDidLoad {
    [super viewDidLoad];
    _scrollView = [[UIScrollView alloc]init];
    _scrollView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    _scrollView.bounces = NO;
    _scrollView.userInteractionEnabled = YES;//是否允许屏幕接收点击事件
    _scrollView.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width*9, [UIScreen mainScreen].bounds.size.height);
    for (int i=0; i<9; i++) {
        NSString* imageName = [NSString stringWithFormat:@"12%d.png",i];
        UIImage* image = [UIImage imageNamed:imageName];
        UIImageView* imageView = [[UIImageView alloc]init];
        imageView.image = image;
        imageView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width*i, 0, [UIScreen mainScreen].bounds.size.width*5, [UIScreen mainScreen].bounds.size.height);
        [self.view addSubview:imageView];
    }
    _scrollView.contentOffset = CGPointMake(0, 0);//滚动视图画布的偏移位置,决定画布显示的最终结果
    _scrollView.pagingEnabled = YES;
    _scrollView.delegate = self;//实现代理
    [self.view addSubview:_scrollView];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //让滚动视图移动到指定的位置
    [_scrollView scrollRectToVisible:CGRectMake(0, 0, 0, 0) animated:YES];
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"滚动视图移动时调用");
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    NSLog(@"当滚动视图结束拖拽时调用");
}
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    NSLog(@"即将减速时调用");
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSLog(@"停止的瞬间开始调用");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
