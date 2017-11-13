//
//  Download.m
//  Block2_OC
//
//  Created by Felix on 2017/11/13.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "Download.h"
@interface Download()
//定义一个block类型的属性
@property (copy,nonatomic) void (^myComplete)(NSString* message);

@end

@implementation Download
-(void)downloadWithUrl:(NSString *)urlString complete:(void  (^) (NSString* message))success {
    NSString* loadMessage = [NSString stringWithFormat:@"从%@下载到的数据",urlString];
    success(loadMessage);
    self.myComplete = success;//保留block
    [self finishedDownload];
    
}
-(void)finishedDownload {
    
    self.myComplete(@"");
}
@end
