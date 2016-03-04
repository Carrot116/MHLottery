//
//  MHPushNotiController.m
//  MHLottery
//
//  Created by Carrot on 16/3/3.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHPushNotiController.h"
#import "MHSettingGroup.h"
#import "MHSettingItem.h"
#import "MHSettingArrowItem.h"

@implementation MHPushNotiController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self setupData];
}

- (void)setupData{
    MHSettingItem* open = [MHSettingArrowItem itemWithTitle:@"开奖号码推送" destVcClass:nil];
    MHSettingItem* win = [MHSettingArrowItem itemWithTitle:@"中奖动画" destVcClass:nil];
    MHSettingItem* score = [MHSettingArrowItem itemWithTitle:@"比分直播提醒" destVcClass:nil];
    MHSettingItem* buy = [MHSettingArrowItem itemWithTitle:@"购彩定时提醒" destVcClass:nil];
    MHSettingGroup* group = [[MHSettingGroup alloc] init];
    group.items = @[open, win,score,buy];
    
    [self.data addObject:group];
}
@end
