//
//  Person.m
//  Block2_OC
//
//  Created by Felix on 2017/11/13.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)studyComplete:(void (^)(NSString * message))completeBlock {
    NSLog(@"今天学习了很多内容");
    //调用用户定制的block
    completeBlock(@"学习的block");
}
@end
