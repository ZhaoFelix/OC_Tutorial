//
//  ViewController.m
//  UITextFiled_OC
//
//  Created by Felix on 2017/11/12.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textfield = _textfield;
- (void)viewDidLoad {
    [super viewDidLoad];
    _textfield = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 200, 150)];
    [self.view addSubview:_textfield];
    _textfield.placeholder = @"请输入用户名";
    _textfield.borderStyle = UITextBorderStyleLine;//设置边框样式
    _textfield.textAlignment = NSTextAlignmentCenter;
    //_textfield.keyboardType = UIKeyboardTypePhonePad;//设置键盘风格
    _textfield.secureTextEntry = YES;//是否作为密码输入
    _textfield.delegate = self;
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_textfield resignFirstResponder];//放弃第一响应
}
-(void)textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"结束编辑输入");
}
-(void)textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"开始输入");
}
//是否可以开始输入
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
