//
//  Card.m
//  ContactList
//
//  Created by Felix on 2017/11/14.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "Card.h"

@implementation Card

+(instancetype)carWithName:(NSString *)name andPhoneNUmber:(NSUInteger)number {
    Card* card = [[Card alloc]init];
    card.name = name;
    card.phoneNumber = number;
    return card;
}

-(NSString *)description {
    return [NSString stringWithFormat:@"name:%@ telNumber:%lu",self.name,self.phoneNumber];
}
- (BOOL)isEqual:(id)other
{
    Card* card = (Card*)other;
    //首先判断指针位置是否相等
    if (self==card) {
        return YES;
    }
    else if ([self.name isEqualToString:card.name] && self.phoneNumber==card.phoneNumber) {
        return YES;
    }
    else {
        return NO;
    }
}

@end
