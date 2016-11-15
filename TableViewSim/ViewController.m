//
//  ViewController.m
//  TableViewSim
//
//  Created by 杨志远 on 16/11/4.
//  Copyright © 2016年 杨志远. All rights reserved.
//

#import "ViewController.h"
#import "YZYModel.h"
#import "YZYTableView.h"
#import "YZYCustomTableViewCell.h"
#import "YZYTableViewDelegate.h"
#import "YZYTableViewDataSource.h"
@interface ViewController ()
//tableView
@property(nonatomic,strong)YZYTableView *tableView;
//dataSource
@property(nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];

    [self setUpTableView];

    
}
#pragma mark - createTableView
-(void)setUpTableView
{
    
    [self.view addSubview:self.tableView];
}


-(void)loadData
{
    NSDictionary *dic = @{@"name" : @"XMPP"};
     NSDictionary *dic1 = @{@"name" : @"X"};
    YZYModel *model = [[YZYModel alloc] initWithDictionary:dic];
    YZYModel *model1 = [[YZYModel alloc] initWithDictionary:dic1];

    
    [self.dataArray addObject:model];
    [self.dataArray addObject:model1];
}


-(YZYTableView *)tableView
{
    if (!_tableView) {
        _tableView = [[YZYTableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.yzyDelegate = [YZYTableViewDelegate initialDelegate];
        
        _tableView.yzyDataSource = [YZYTableViewDataSource dataSourceWithDataArray:self.dataArray configueCellBlock:^(id cell, id model) {
            
            [cell configueWith:model];
        }];
        
        
        
    }
    return _tableView;
}


-(NSMutableArray *)dataArray
{
    if (!_dataArray)
    {
        _dataArray = [[NSMutableArray alloc]init];
    }
    return _dataArray;
}


@end
