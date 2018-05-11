//
//  CarModel.h
//  tableView_OC
//
//  Created by Felix on 2018/5/9.
//  Copyright © 2018年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CarModel : NSObject
/*  头部 */
@property (nonatomic,copy) NSString *header;
/* 尾部 */
@property (nonatomic,copy) NSString *footer;

@property (nonatomic,strong) NSArray *cars;

@end
