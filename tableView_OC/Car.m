//
//  Car.m
//  tableView_OC
//
//  Created by Felix on 2018/5/9.
//  Copyright © 2018年 Felix. All rights reserved.
//

#import "Car.h"

@implementation Car
+(instancetype)carWithIcon:(NSString *)icon name:(NSString *)name {
    Car *car = [[self alloc]init];
    car.name = name;
    car.icon = icon;
    return car;
    
}
@end
