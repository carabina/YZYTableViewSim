//
//  CellTypeManager.h
//  TableViewSim
//
//  Created by 杨志远 on 16/11/8.
//  Copyright © 2016年 杨志远. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface CellTypeManager : NSObject

/**
 *  return different kind of cell
 *
 *  @param tableView        tableView
 *  @param cellClass        @"UITableViewCell Class"
 *  @param refuseIdentifier refuseIdentifier
 *  @param indexPath        indexPath
 *
 *  @return cell
 */
+(UITableViewCell *)managerWithTableView:(UITableView *)tableView tableViewCellClass:(NSString *)cellClass refuseIdentifier:(NSString *)refuseIdentifier atIndexPath:(NSIndexPath *)indexPath;

@end
