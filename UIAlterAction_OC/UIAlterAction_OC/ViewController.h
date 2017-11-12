//
//  ViewController.h
//  UIAlterAction_OC
//
//  Created by Felix on 2017/11/12.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>
{
    UIAlertView* _alertView;
    UIActivityIndicatorView* _indedicatorView;
}
@property (retain,nonatomic)UIActivityIndicatorView* indedicatorView;
@property (retain,nonatomic)UIAlertView* alertView;

@end

