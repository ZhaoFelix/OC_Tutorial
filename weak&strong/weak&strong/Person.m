//
//  Person.m
//  weak&strong
//
//  Created by Felix on 2017/11/13.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "Person.h"

@implementation Person
//不释放对象，处理一些对象在释放时需要处理的一些工作
-(void)dealloc {
    NSLog(@"person对象被释放了");
}
@end
