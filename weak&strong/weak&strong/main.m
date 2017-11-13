//
//  main.m
//  weak&strong
//
//  Created by Felix on 2017/11/13.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         strong： retain
         weak： assign 只能指向对象，不持有指向对象的所有权，当它指向的对象被释放时，其自动被置为nil
         在ARC情况下，所有的对象默认为strong
         */
        Person* person = [[Person alloc]init];
        NSLog(@"Hello, World!");
    }
    return 0;
}
