//
//  Person.h
//  Block2_OC
//
//  Created by Felix on 2017/11/13.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

-(void)studyComplete:(void (^)(NSString * message))completeBlock;

@end
