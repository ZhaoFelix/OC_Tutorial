//
//  ViewController.m
//  Block2_OC
//
//  Created by Felix on 2017/11/13.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"
#import "Download.h"
@implementation ViewController
-(void)loadView {
    Download * download = [[Download alloc]init];
    [download downloadWithUrl:@"www.baidu.com" complete:^(NSString *message) {
        NSLog(@"显示信息%@",message);
    }];
}

@end
