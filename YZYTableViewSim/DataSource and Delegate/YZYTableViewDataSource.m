//
//  YZYTableViewDataSource.m
//  TableViewSim
//
//  Created by 杨志远 on 16/11/4.
//  Copyright © 2016年 杨志远. All rights reserved.
//

#import "YZYTableViewDataSource.h"
#import "CellTypeManager.h"
static NSString *const identifier = @"Identifier";
@interface YZYTableViewDataSource()
//dataSource
@property(nonatomic,strong)NSMutableArray *dataArray;
//configue cell block
@property(nonatomic,copy)ConfigCellBlock configBlock;

@end
@implementation YZYTableViewDataSource

#pragma mark Initial------Method
+(instancetype)dataSourceWithDataArray:(NSMutableArray<YZYModel *> *)dataArray configueCellBlock:(ConfigCellBlock)block
{
    YZYTableViewDataSource *dataSource = [[self alloc]init];

    dataSource.dataArray = dataArray;
    
    dataSource.configBlock = block;
    
    return dataSource;
}

#pragma mark - YZYTableViewDataSourceProtocol------Method

-(YZYModel *)tableView:(UITableView *)tableView modelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSAssert(self.dataArray.count > 0, @"数据源数组为空");
    
    YZYModel * model = self.dataArray[indexPath.row];
    
    return model;
}




#pragma mark - UITableViewDataSource------Method

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    static id cell;
    
    cell = [CellTypeManager managerWithTableView:tableView tableViewCellClass:@"UITableViewCell" refuseIdentifier:@"id" atIndexPath:indexPath];
    
    
    return cell;
}



@end





