//
//  MHSettingController.m
//  MHLottery
//
//  Created by Carrot on 16/3/2.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHSettingController.h"
#import "MHSettingGroup.h"
#import "MHSettingItem.h"
#import "MHSettingSwitchItem.h"
#import "MHSettingArrowItem.h"

#import "MHPushNotiController.h"
#import "MHSettingHelpController.h"

@implementation MHSettingController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"设置";
    
    [self setupData1];
    [self setupData2];
}

- (void)setupData1{
    
    MHSettingItem* noti = [MHSettingArrowItem itemWithIcon:@"MorePush" title:@"推送和提醒" destVcClass:[MHPushNotiController class]];
    MHSettingItem* handshake = [MHSettingSwitchItem itemWithIcon:@"handShake" title:@"摇一摇机选"];
    MHSettingItem* sound = [MHSettingSwitchItem itemWithIcon:@"sound_Effect" title:@"声音效果"];
    MHSettingGroup* group = [[MHSettingGroup alloc] init];
    group.items = @[noti, handshake,sound];

    [self.data addObject:group];
}

- (void)setupData2{
    
    MHSettingItem* update = [MHSettingArrowItem itemWithIcon:@"MoreUpdate" title:@"检查新版本" destVcClass:[MHSettingController class]];
    MHSettingItem* help = [MHSettingArrowItem itemWithIcon:@"MoreHelp" title:@"帮助" destVcClass:[MHSettingHelpController class]];
    MHSettingItem* share = [MHSettingArrowItem itemWithIcon:@"MoreShare" title:@"分享" destVcClass:[MHSettingController class]];
    MHSettingItem* message = [MHSettingArrowItem itemWithIcon:@"MoreMessage" title:@"查看消息" destVcClass:[MHSettingController class]];
    MHSettingItem* netease = [MHSettingArrowItem itemWithIcon:@"MoreNetease" title:@"产品推荐" destVcClass:[MHSettingController class]];
    MHSettingItem* about = [MHSettingArrowItem itemWithIcon:@"MoreAbout" title:@"关于" destVcClass:[MHSettingController class]];
    
    MHSettingGroup* group = [[MHSettingGroup alloc] init];
    group.items = @[update, help,share, message, netease,about];
    [self.data addObject:group];
}

@end
