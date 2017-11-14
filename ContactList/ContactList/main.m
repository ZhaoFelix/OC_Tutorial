//
//  main.m
//  ContactList
//
//  Created by Felix on 2017/11/14.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "PhoneBook.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Card* card = [Card carWithName:@"Felix" andPhoneNUmber:23423534];
        Card* card2 = [Card carWithName:@"Felix2" andPhoneNUmber:3456];
         Card* card3 = [Card carWithName:@"Felix2" andPhoneNUmber:3456];
        PhoneBook* phoneBook = [[PhoneBook alloc]init];
        [phoneBook addCard:card];
        [phoneBook addCard:card2];
        [phoneBook addCard:card3];
        [phoneBook showMessage];
        [phoneBook removeCard:card3];
        
    }
    return 0;
}
