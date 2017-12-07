//
//  MD5.m
//  MD5
//
//  Created by Felix on 2017/12/7.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "MD5.h"

@implementation MD5
+(NSString *)md5:(NSString *)str {
    const char *cStr = [str UTF8String];
    unsigned char result[16];
    CC_MD5(cStr, strlen(cStr), result);//把cStr字符串转换成了32位的16进制数列（这个过程不可逆转） 存储到了result这个空间中
    NSString *string = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                        result[0], result[1], result[2], result[3],
                        result[4], result[5], result[6], result[7],
                        result[8], result[9], result[10], result[11],
                        result[12], result[13], result[14], result[15]
        ];
    return [string substringWithRange:NSMakeRange(8, 16)];
    
}
@end
