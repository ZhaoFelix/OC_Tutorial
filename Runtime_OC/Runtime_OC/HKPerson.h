//
//  HKPerson.h
//  Runtime_OC
//
//  Created by Felix on 2017/11/11.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HKPerson : NSObject
-(void)run;
-(void)eatWithFood:(NSString *)food;
//声明一个类方法
+(void)run;
@end
