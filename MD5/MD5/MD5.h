//
//  MD5.h
//  MD5
//
//  Created by Felix on 2017/12/7.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface MD5 : NSObject
+(NSString*)md5:(NSString *)str;
@end
