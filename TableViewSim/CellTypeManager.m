//
//  CellTypeManager.m
//  TableViewSim
//
//  Created by 杨志远 on 16/11/8.
//  Copyright © 2016年 杨志远. All rights reserved.
//

#import "CellTypeManager.h"
#import "YZYCustomTableViewCell.h"

@implementation CellTypeManager


+(UITableViewCell *)managerWithTableView:(UITableView *)tableView tableViewCellClass:(NSString *)cellClass refuseIdentifier:(NSString *)refuseIdentifier atIndexPath:(NSIndexPath *)indexPath
{
    NSAssert1(NSClassFromString(cellClass), @"%@ 不存在", cellClass);
    
    
    if (NSClassFromString(cellClass))
    {
        
        id cell  = [tableView dequeueReusableCellWithIdentifier:refuseIdentifier];
        if (!cell)
        {
            cell = [[NSClassFromString(cellClass) alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:refuseIdentifier];
        }
        return cell;
    }
    
    
    return nil;
}

@end
