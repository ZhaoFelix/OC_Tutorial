//
//  ViewController.h
//  SDWebImage_OC
//
//  Created by Felix on 2017/11/9.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//数据视图协议
<UITableViewDelegate,UITableViewDataSource>
{
    //数据视图
    UITableView* _tableView;
    //数据对象
    NSMutableArray* _arrayData;
    UIBarButtonItem* _btnloadData;
    //编辑按钮
    UIBarButtonItem* _btnEdit;
}

@end

