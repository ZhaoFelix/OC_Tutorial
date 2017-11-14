//
//  Card.h
//  ContactList
//
//  Created by Felix on 2017/11/14.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong,nonatomic) NSString* name;
@property (assign,nonatomic) NSUInteger phoneNumber;
-(BOOL)isEqualToCard:(Card*)card;
-(BOOL)isEqual:(id)object;

+(instancetype)carWithName:(NSString*)name andPhoneNUmber:(NSUInteger)number;

@end
