//
//  main.m
//  Block_OC
//
//  Created by Felix on 2017/11/13.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>
void func() {
    NSLog(@"这是一个没有参数和返回值的函数");
}
void func1(int a){
    NSLog(@"a=%d",a);
}
int func2(int a,int b){
    return a+b;
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
       //函数指针
        void (*p)(void);
        //函数指针赋值
        p = func;
        //函数指针调用
        p();
        
        //block实现
        //声明
        void (^block)();
        void (^block2)(int a);
        int (^block3)(int a);
        //实现,返回值可以省略
        block = ^(){
            NSLog(@"这是一个无参无返回值的block");
        };
        block2 = ^(int a){
            NSLog(@"a=%d",a);
        };
        block3 = ^(int a){
            return a;
        };
        //调用
        block();
        block2(5);
        NSLog(@"block3 = %d",block3(10));
        
        void (*p1)(int a);
        p1 = func1;
        p1(5);
        
        int (*p2)(int a,int b);
        p2 = func2;
       int result =  p2(3,6);
        NSLog(@"result=%d",result);
    }
    return 0;
}


