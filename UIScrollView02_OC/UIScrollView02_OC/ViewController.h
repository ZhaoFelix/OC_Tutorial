//
//  ViewController.h
//  UIScrollView02_OC
//
//  Created by Felix on 2017/11/12.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>
{
    UIScrollView* _scrollView;
}
@property(retain,nonatomic)UIScrollView* scrollView;
@end

