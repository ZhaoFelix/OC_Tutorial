//
//  ViewController.m
//  归档解档实例_OC
//
//  Created by Felix on 2017/11/11.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"
#import "Teacher.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)Write:(UIButton *)sender {
    //创建一个对象
    Teacher* teacher = [[Teacher alloc]init];
    teacher.name = @"Felix";
    teacher.age = 22;
    //获取沙盒路径
    NSString* temp = NSTemporaryDirectory();
    NSString* filePath = [temp stringByAppendingPathComponent:@"t.felix"];
    //归档操作
    [NSKeyedArchiver archiveRootObject:teacher toFile:filePath];
}
- (IBAction)Read:(UIButton *)sender {
    //获取路径
    NSString* temp = NSTemporaryDirectory();
    NSString* filePath = [temp stringByAppendingPathComponent:@"t.felix"];
    //解档
    Teacher* teacher = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    NSLog(@"name=%@,age=%d",teacher.name,teacher.age);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
