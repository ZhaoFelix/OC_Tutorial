//
//  main.m
//  Block2_OC
//
//  Created by Felix on 2017/11/13.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "ViewController.h"
void func(void (^block)(void)){
    NSLog(@"这里是函数");
    block();
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         block的类型
         NSGlobalBlock:全局block没有引用外部变量
         NSMallocBlock:堆区block，引用了外部的变量
         NSStackBlock:栈区block
         */
        //若需要在block的内部修改外部的变量，需要在变量的外部定义是添加__block或将变量声明成静态区变量
       __block int a = 19;
        static int b = 10;
        //声明+定义
        void (^block)(void) = ^() {
            a = 10;
            b = 20;
            NSLog(@"a = %d,b = %d",a,b);
        };
        func(block);
        func(^(void){
            NSLog(@"这是一个自定义的block");
        });
        block();
        
        Person* person = [Person new];
        [person studyComplete:^(NSString * message){
            NSLog(@"调用block%@",message);
        }];
        
        
        ViewController* vc = [[ViewController alloc]init];
        [vc loadView];
    }
    return 0;
}
