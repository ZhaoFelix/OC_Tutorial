//
//  Teacher.m
//  归档解档实例_OC
//
//  Created by Felix on 2017/11/11.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "Teacher.h"
#import <objc/message.h>

@implementation Teacher

//归档
- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
//    [aCoder encodeObject:self.name forKey:@"name"];
//    [aCoder encodeInteger:self.age  forKey:@"age"];
    unsigned int count = 0;
    Ivar * ivars = class_copyIvarList([Teacher class], &count);
    for (int i=0;i<count;i++) {
        //归档，序列化，将一个对象转换成二进制文件存储
        Ivar  ivar = ivars[i];
        const char* name =  ivar_getName(ivar);
        NSString* key = [NSString stringWithUTF8String:name];
        [aCoder encodeObject:[self valueForKey:key] forKey:key];
    }
    free(ivars);//c语言内存资源释放
}

//解档
- (nullable instancetype)initWithCoder:(nonnull NSCoder *)aDecoder {
    if (self = [super init]) {
        unsigned int count = 0;
        Ivar * ivars = class_copyIvarList([Teacher class], &count);
        for (int i=0;i<count;i++) {
            //归档，反序列化，将二进制文件转换为对象
            Ivar  ivar = ivars[i];
            const char* name =  ivar_getName(ivar);
            NSString* key = [NSString stringWithUTF8String:name];
          id value =   [aDecoder decodeObjectForKey:key];
            //设置到成员变量
            [self setValue:value forKey:key];
        }
        free(ivars);//c语言内存资源释放
        
    }
    return self;
}

@end
