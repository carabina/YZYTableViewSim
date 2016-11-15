//
//  YZYTableViewDataSource.h
//  TableViewSim
//
//  Created by 杨志远 on 16/11/4.
//  Copyright © 2016年 杨志远. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YZYModel.h"
#import "YZYTableViewDataSourceProtocol.h"
#import "YZYCustomTableViewCell.h"


@interface YZYTableViewDataSource : NSObject<YZYTableViewDataSourceProtocol>

/**
 *  configue cell block
 *
 *  @param cell  cell
 *  @param model model
 */
typedef void (^ConfigCellBlock)( id cell, id model);

/**
 *  dataSource initial
 *
 *  @param dataArray dataSource
 *  @param block     block
 *
 *  @return dataSource
 */
+(instancetype)dataSourceWithDataArray:(NSMutableArray<YZYModel *>*)dataArray configueCellBlock:(ConfigCellBlock)block;



@end
