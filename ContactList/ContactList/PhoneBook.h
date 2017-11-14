//
//  PhoneBook.h
//  ContactList
//
//  Created by Felix on 2017/11/14.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PhoneBook : NSObject
@property(strong,nonatomic) NSMutableArray* cards;
@property (strong,nonatomic) NSString* masterName;
-(BOOL)addCard:(Card*)card;
-(BOOL)removeCard:(Card*)card;
-(void)showMessage;

@end
