
//
//  HKPerson.m
//  Runtime_OC
//
//  Created by Felix on 2017/11/11.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "HKPerson.h"

@implementation HKPerson
-(void)run {
    NSLog(@"对象方法");
}
- (void)eatWithFood:(NSString *)food {
    NSLog(@"吃到%@",food);
}
+(void)run {
    NSLog(@"这是一个类方法");
    
}
@end
