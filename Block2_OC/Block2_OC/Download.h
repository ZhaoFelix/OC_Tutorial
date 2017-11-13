//
//  Download.h
//  Block2_OC
//
//  Created by Felix on 2017/11/13.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Download : NSObject
-(void)downloadWithUrl:(NSString *)urlString complete:(void  (^) (NSString* message))success;
@end
