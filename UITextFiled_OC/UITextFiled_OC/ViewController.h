//
//  ViewController.h
//  UITextFiled_OC
//
//  Created by Felix on 2017/11/12.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    UITextField* _textfield;
}
@property(retain,nonatomic) UITextField* textfield;
@end

