//
//  YZYCustomTableViewCell.h
//  TableViewSim
//
//  Created by 杨志远 on 16/11/7.
//  Copyright © 2016年 杨志远. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YZYModel.h"
@interface YZYCustomTableViewCell : UITableViewCell

/**
 *  cell configue  
 *
 *  @param model data
 */
-(void)configueWith:(YZYModel *)model;

//setUp UI
-(void)setUpCellUI;

@end
