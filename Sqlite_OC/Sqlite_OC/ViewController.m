//
//  ViewController.m
//  Sqlite_OC
//
//  Created by Felix on 2017/11/9.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"
#import "FMDatabase.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray* arrTitle = [NSArray arrayWithObjects:@"创建数据库",@"插入数据",@"删除数据",@"查找显示",nil];
    for (int i=0; i<4; i++) {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+80*i, 100, 40);
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = 100+i;
        [btn setTitle:arrTitle[i] forState:UIControlStateNormal];
        [self.view addSubview:btn];
    }
}
-(void)pressBtn:(UIButton *)btn{
    //创建数据库
    if (btn.tag==100) {
        //获取数据库的创建路径
        //NSHomeDirectory():获取手机APP的沙盒路径
        NSString* strPath = [NSHomeDirectory() stringByAppendingString:@"/Documents/_fmDB01._fmDB"];
     //如果数据下面没有数据库，则创建该数据库，否则加载数据库到内存
        FMDatabase* _fmDB = [FMDatabase databaseWithPath:strPath];
        if (_fmDB!=nil) {
            NSLog(@"创建成功");
        }
        BOOL isOpen = [_fmDB open];//打开数据库
        if (isOpen) {
            NSLog(@"打开数据库成功");
        }
        //创建一条sql语句
        NSString* createSql = @"create table if not exists stu(id integer primary key,age integer,name varchar(20));";
        BOOL isCreate = [_fmDB executeUpdate:createSql];//执行sql语句，返回一个bool值
        if (isCreate) {
            NSLog(@"建表成功");
        }
        
        BOOL isClose = [_fmDB close];
        if (isClose) {
            NSLog(@"关闭数据库成功");
        }
    }
    //添加数据
    else if(btn.tag==101){
        //NSHomeDirectory():获取手机APP的沙盒路径
        NSString* strPath = [NSHomeDirectory() stringByAppendingString:@"/Documents/_fmDB01._fmDB"];
        //如果数据下面没有数据库，则创建该数据库，否则加载数据库到内存
        FMDatabase* _fmDB = [FMDatabase databaseWithPath:strPath];
        //确保数据被加载
        if (_fmDB!=nil) {
           
            if ([_fmDB open]) {
                NSString* strSql = @"insert into stu values(1,19,'Felix');";
                if ([_fmDB executeUpdate:strSql]) {
                    NSLog(@"插入数据成功");
                }
            }
        }
    }
    //删除数据
    else if(btn.tag==102){
        //NSHomeDirectory():获取手机APP的沙盒路径
        NSString* strPath = [NSHomeDirectory() stringByAppendingString:@"/Documents/_fmDB01._fmDB"];
        //如果数据下面没有数据库，则创建该数据库，否则加载数据库到内存
        FMDatabase* _fmDB = [FMDatabase databaseWithPath:strPath];
        NSString* deleteSql = @"delete from stu where id=1;";
        [_fmDB open];
        [_fmDB executeUpdate:deleteSql];
    }
    //查找打印数据
    else {
        //NSHomeDirectory():获取手机APP的沙盒路径
        NSString* strPath = [NSHomeDirectory() stringByAppendingString:@"/Documents/_fmDB01._fmDB"];
        //如果数据下面没有数据库，则创建该数据库，否则加载数据库到内存
        FMDatabase* _fmDB = [FMDatabase databaseWithPath:strPath];
        NSString* selectSQL = @"select * from stu;";
        if ([_fmDB open]) {
            //查找返回一个FMResultSet对象,能返回多重数据
            FMResultSet* result = [_fmDB executeQuery:selectSQL];
            //循环遍历查询到的结果
            while ([result next]) {
                
                //NSString* name = [result stringForColumnIndex:1];通过字段的索引取得值
                // 通过字段名取得值
                NSInteger stuId = [result intForColumn:@"id"];
                NSString* name = [result stringForColumn:@"name"];
                NSInteger stuAge = [result intForColumn:@"age"];
                NSLog(@"id=%d,name=%@,age=%d",stuId,name,stuAge);
            }
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
