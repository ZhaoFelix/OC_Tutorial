//
//  Download.m
//  Block2_OC
//
//  Created by Felix on 2017/11/13.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "Download.h"

@implementation Download
-(void)downloadWithUrl:(NSString *)urlString complete:(void  (^) (NSString* message))success {
    NSString* loadMessage = [NSString stringWithFormat:@"从%@下载到的数据",urlString];
    success(loadMessage);
}

@end
