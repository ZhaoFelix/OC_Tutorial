//
//  Teacher.h
//  归档解档实例_OC
//
//  Created by Felix on 2017/11/11.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Teacher : NSObject<NSCoding>
@property(copy,nonatomic)NSString* name;
@property(assign,nonatomic)int age;

@end
