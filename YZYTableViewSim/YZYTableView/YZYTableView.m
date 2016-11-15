//
//  YZYTableView.m
//  TableViewSim
//
//  Created by 杨志远 on 16/11/4.
//  Copyright © 2016年 杨志远. All rights reserved.
//

#import "YZYTableView.h"

@implementation YZYTableView

/**
 *  inherit from UITableView 
 *
 *  @param frame frame
 *  @param style style
 *
 *  @return self
 */
-(instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    if (self == [super initWithFrame:frame style:style])
    {
        [self setUpTableViewUI];
    }
    return self;
}

/**
 *  set Method
 *
 *  @param yzyDataSource dataSource
 */
-(void)setYzyDataSource:(YZYTableViewDataSource<YZYTableViewDataSourceProtocol> *)yzyDataSource
{
    _yzyDataSource = yzyDataSource;
    self.dataSource = _yzyDataSource;
}

/**
 *  set Method
 *
 *  @param yzyDataSource dataSource
 */
-(void)setYzyDelegate:(YZYTableViewDelegate *)yzyDelegate
{
    _yzyDelegate = yzyDelegate;
    self.delegate = _yzyDelegate;
}
/**
 *  setUp UITableView
 */
-(void)setUpTableViewUI
{
    //self.tableFooterView = [[UIView alloc]init];
    
}
@end
