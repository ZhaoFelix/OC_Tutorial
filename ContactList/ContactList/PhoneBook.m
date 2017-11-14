//
//  PhoneBook.m
//  ContactList
//
//  Created by Felix on 2017/11/14.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "PhoneBook.h"

@implementation PhoneBook
-(instancetype)init {
    self = [super init];
    if (self) {
        self.cards = [NSMutableArray new];
    }
    return self;
}
-(BOOL)addCard:(Card *)card {
    //判断内容是否相等
    for (int i=0; i<self.cards.count; i++) {
        Card* myCard = self.cards[i];
        if ([myCard isEqual:card]) {
            return NO;
        }
    }
    [self.cards addObject:card];
    return YES;
    
    
}
-(BOOL)removeCard:(Card *)card {
    for (int i=0; i<self.cards.count; i++) {
        Card* myCard = self.cards[i];
        if ([myCard isEqual:card]) {
            [self.cards removeObjectAtIndex:i];
            return YES;
        }
    }
   
    return NO;
}
-(void)showMessage {
    for (int i=0; i<self.cards.count; i++) {
        Card* myCard = self.cards[i];
        NSLog(@"%@",myCard);
    }
}
@end
