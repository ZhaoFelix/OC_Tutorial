//
//  ViewController.m
//  Runtime_OC
//
//  Created by Felix on 2017/11/11.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"
#import "HKPerson.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HKPerson* hkPerson = [HKPerson new];
    Class personClass = [HKPerson class];
    [personClass performSelector:@selector(run)];//是底层的消息机制的一个顶层封装
    //XCode5 之后，苹果不建议使用底层方法。若需要调用底层方法，需要在building-setting中将ENABLE_STRICT_OBJC_MSGSEND设置为NO
    objc_msgSend(hkPerson, @selector(run));//消息发送
    objc_msgSend(hkPerson, @selector(eatWithFood:),@"香蕉");//带参数的方法
    objc_msgSend(personClass, @selector(run));//调用类方法
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
