//
//  YZYTableViewDelegate.m
//  TableViewSim
//
//  Created by 杨志远 on 16/11/4.
//  Copyright © 2016年 杨志远. All rights reserved.
//

#import "YZYTableViewDelegate.h"
#import "YZYTableViewDataSource.h"
#import "YZYModel.h"

@interface YZYTableViewDelegate()

@property(nonatomic,strong)YZYTableViewDataSource *dataSource;

@end
@implementation YZYTableViewDelegate

+(instancetype)initialDelegate
{
    return [[self alloc]init];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Get dataSource
    
    //self.dataSource = (YZYTableViewDataSource *)tableView.dataSource;
    
    //Get model
    //YZYModel *model = [self.dataSource tableView:tableView modelForRowAtIndexPath:indexPath];
    
    
    //TODO
    //calculate height with model......
    
    
    return 100;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
