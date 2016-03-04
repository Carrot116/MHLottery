//
//  MHSettingItem.m
//  MHLottery
//
//  Created by Carrot on 16/3/2.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHSettingItem.h"

@implementation MHSettingItem

+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title{
    MHSettingItem *item = [[self alloc]init];
    item.icon = icon;
    item.title = title;
    return item;
}

+ (instancetype)itemWithTitle:(NSString*)title{
    return [self itemWithIcon:nil title:title];
}
@end
