//
//  Car.h
//  tableView_OC
//
//  Created by Felix on 2018/5/9.
//  Copyright © 2018年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *name;
+(instancetype) carWithIcon:(NSString *)icon name:(NSString *)name;
@end
