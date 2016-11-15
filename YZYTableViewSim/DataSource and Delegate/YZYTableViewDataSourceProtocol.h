//
//  YZYTableViewDataSourceProtocol.h
//  TableViewSim
//
//  Created by 杨志远 on 16/11/7.
//  Copyright © 2016年 杨志远. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "YZYModel.h"

@protocol YZYTableViewDataSourceProtocol <UITableViewDataSource>

/**
 *  To get model
 *
 *  @param tableView tableView
 *  @param indexPath indexPath
 *
 *  @return model
 */
- (YZYModel *)tableView:(UITableView *)tableView  modelForRowAtIndexPath:(NSIndexPath *)indexPath;


@end