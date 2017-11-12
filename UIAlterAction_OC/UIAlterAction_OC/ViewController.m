//
//  ViewController.m
//  UIAlterAction_OC
//
//  Created by Felix on 2017/11/12.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize indedicatorView = _indedicatorView;
- (void)viewDidLoad {
    [super viewDidLoad];
    for (int i=0; i<2; i++) {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+100*i, 100, 40);
        if (i==0) {
            [btn setTitle:@"警告对话框" forState:UIControlStateNormal];
        }
        else if(i==1) {
             [btn setTitle:@"等待指示器" forState:UIControlStateNormal];
        }
        btn.tag = 100+i+1;
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}
-(void)pressBtn:(UIButton*)btn {
    if (btn.tag==101) {
        _alertView = [[UIAlertView alloc]
                      initWithTitle:@"警告"
                      message:@"警告信息"
                      delegate:self
                      cancelButtonTitle:@"取消"
                      otherButtonTitles:@"OK", nil];
        [_alertView show];
    }
    
    //创建等待提示器
    else if(btn.tag==102){
        _indedicatorView = [[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(100, 300, 80, 80)];
        _indedicatorView.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        [self.view addSubview:_indedicatorView];
        [_indedicatorView startAnimating];//启动动画
        //[_indedicatorView stopAnimating];//停止动画
    }
}
//点击对话框的按钮时实现此方法

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"%d",buttonIndex);
}
//对话框即将消失时调用
-(void)alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex {
    
}
//对话框已经消失时调用
-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
