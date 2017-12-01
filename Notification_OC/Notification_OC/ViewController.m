//
//  ViewController.m
//  Notification_OC
//
//  Created by Felix on 2017/12/1.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UILabel *label;
    UIButton *button;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建视图方法
    [self setUI];
    NSNotificationCenter *center = NSNotificationCenter.defaultCenter;
    [center addObserver:self selector:@selector(changeLabelText:) name:@"notification" object:nil];
}

-(void)setUI{
    label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 50)];
    label.backgroundColor = [UIColor grayColor];
    label.text = @"没有接收到通知";
    [self.view addSubview:label];
    
    button = [[UIButton alloc]initWithFrame:CGRectMake(100, 200, 200, 50)];
    [button setTitle:@"发送通知" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blueColor];
    [button addTarget:self action:@selector(sendNotification) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
-(void)sendNotification {
    NSNotification *notification = [NSNotification notificationWithName:@"notification" object:nil userInfo:@{@"key":@"接收到了通知"}];
    [NSNotificationCenter.defaultCenter postNotification:notification];
}
-(void)changeLabelText:(NSNotification *)noti{
    label.text = [noti.userInfo objectForKey:@"key"];
}
-(void)viewDidDisappear:(BOOL)animated {
    [self viewDidDisappear:YES];
    [NSNotificationCenter.defaultCenter removeObserver:self name:@"notification" object:nil];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
