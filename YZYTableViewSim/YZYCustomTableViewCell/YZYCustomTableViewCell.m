//
//  YZYCustomTableViewCell.m
//  TableViewSim
//
//  Created by 杨志远 on 16/11/7.
//  Copyright © 2016年 杨志远. All rights reserved.
//

#import "YZYCustomTableViewCell.h"

@implementation YZYCustomTableViewCell

/**
 *  inherit from UITableViewCell
 *
 *  @param style           style
 *  @param reuseIdentifier reuseIdentifier
 *
 *  @return self
 */
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self == [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        [self setUpCellUI];
    }
    return self;
}
//configue cell UI
-(void)setUpCellUI
{
    
}

//configue cell With model
-(void)configueWith:(YZYModel *)model
{
}

@end
