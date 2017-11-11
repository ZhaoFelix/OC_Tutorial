//
//  NSURL+url.m
//  Runtime2_OC
//
//  Created by Felix on 2017/11/11.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "NSURL+url.h"
#import <objc/message.h>
@implementation NSURL (url)
//程序运行时，该方法会率先加载
+(void)load {
    NSLog(@"%s",__func__);
    //获取对象方法
    //class_getInstanceMethod(<#Class  _Nullable __unsafe_unretained cls#>, <#SEL  _Nonnull name#>)
    //获取类方法
    Method method =  class_getClassMethod([NSURL class], @selector(URLWithString:));
    Method method2 = class_getClassMethod([NSURL class], @selector(HK_URLWithString:));
    //交换方法
    method_exchangeImplementations(method, method2);
}
+(instancetype)HK_URLWithString:(NSString *)URLString {
    NSURL * url = [NSURL HK_URLWithString:URLString];//调用了系统的URLWithString方法
    if (url==nil) {
        NSLog(@"url为空");
    }
    return url;
}
@end
