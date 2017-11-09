//
//  ViewController.m
//  SDWebImage_OC
//
//  Created by Felix on 2017/11/9.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "UIImageView+WebCache.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"加载网络视图";
    self.navigationController.navigationBar.translucent = NO;
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    //设置数据视图
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:_tableView];
    _arrayData = [[NSMutableArray alloc]init];
    for (int i=0;i<10;i++) {
        NSString* str = [NSString stringWithFormat:@"数据%d",i];
        [_arrayData addObject:str];
    }
}
//tableView代理需要实现的几个方法
//组数
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
// 数据的个数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrayData.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString* strId = @"ID";
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:strId];
    if (cell==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:strId];
    }
    cell.textLabel.text = _arrayData[indexPath.row];
    return cell;
}
//设置单元格高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
