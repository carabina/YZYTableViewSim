//
//  YZYModel.m
//  TableViewSim
//
//  Created by 杨志远 on 16/11/7.
//  Copyright © 2016年 杨志远. All rights reserved.
//

#import "YZYModel.h"

@implementation YZYModel


-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    
    if ([dictionary isKindOfClass:[NSDictionary class]])
    {
        if (self == [super init])
        {
            [self setValuesForKeysWithDictionary:dictionary];
        }
        
        return self;
    }else
    {
        return nil;
    }
    
}

-(void)setValue:(id)value forKey:(NSString *)key
{
    if ([value isKindOfClass:[NSNull class]])
    {
        return;
    }
    
    [super setValue:value forKey:key];
    
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}
@end
