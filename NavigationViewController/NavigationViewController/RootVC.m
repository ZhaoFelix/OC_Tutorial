//
//  RootVC.m
//  NavigationViewController
//
//  Created by Felix on 2017/11/7.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "RootVC.h"
#import "SecondVC.h"
@interface RootVC ()

@end

@implementation RootVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.navigationController.navigationBar.translucent = NO;//设置导航栏的透明度，默认透明度为YES
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;//设置导航栏的风格颜色
    self.navigationController.navigationBar.tintColor = [UIColor orangeColor];
    
    self.title = @"根视图";
    UIBarButtonItem* nextItem = [[UIBarButtonItem alloc]initWithTitle:@"跳转" style:UIBarButtonItemStylePlain target:self action:@selector(nextPage)];
    self.navigationItem.rightBarButtonItem = nextItem;
}
-(void)nextPage{
    //创建一个新的视图控制器
    SecondVC* secondVC = [[SecondVC alloc]init];
    ///[self.navigationController popViewControllerAnimated:YES];将当前视图控制器弹出，返回上一级。出栈
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
