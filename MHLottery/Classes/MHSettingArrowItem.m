//
//  MHSettingArrowItem.m
//  MHLottery
//
//  Created by Carrot on 16/3/3.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHSettingArrowItem.h"

@implementation MHSettingArrowItem

+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title destVcClass:(Class)class{
    MHSettingArrowItem* item = [[self alloc]init];
    item.title = title;
    item.icon = icon;
    item.destVcClass = class;
    return item;
}

+ (instancetype)itemWithTitle:(NSString*)title destVcClass:(Class)class{
    return [self itemWithIcon:nil title:title destVcClass:class];
}
@end
