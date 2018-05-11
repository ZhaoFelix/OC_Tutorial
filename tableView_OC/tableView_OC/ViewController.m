//
//  ViewController.m
//  tableView_OC
//
//  Created by Felix on 2018/5/9.
//  Copyright © 2018年 Felix. All rights reserved.
//

#import "ViewController.h"
#import "CarModel.h"
#import "Car.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic,strong) NSString *carGroups;

@end

@implementation ViewController

-(NSArray *)CarModel {
    if(_carGroups==nil){
        CarModel *group = [[CarModel alloc]init];
        group.header = @"德系";
        group.footer = @"XXXXX";
//        group.cars = @[
//                       @{@"icon":@"",
//                         @"name":@"奔驰"
//                         }
//                       ];
        group.cars = @[
                       [Car carWithIcon:@" " name:@"奔驰"],
                       [Car carWithIcon:@"" name:@"baoma"]
                       ];
        
    }
    else {
        
    }
    return _carGroups;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section==0){
        return 2;
    }
    else if(section==2){
        return 6;
    }
    else if(section==3){
        return 6;
    }
    else {
        return 1;
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [[UITableViewCell alloc]init];
     cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    if(indexPath.section==0){
        if(indexPath.row==0){
            cell.textLabel.text = @"奔驰";
            cell.imageView.image = [UIImage imageNamed:@""];
        }
        else if(indexPath.row==1){
            cell.textLabel.text = @"宝马";
            cell.imageView.image = [UIImage imageNamed:@""];
        }
    }
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if(section==0){
        return @"德系品牌";
    }
    else {
        return @"其他";
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
