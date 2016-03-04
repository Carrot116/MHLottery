//
//  MHSettingCell.h
//  MHLottery
//
//  Created by Carrot on 16/3/3.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MHSettingItem;
@interface MHSettingCell : UITableViewCell

@property (nonatomic, strong) MHSettingItem* item;

+ (instancetype)cellWithTableView:(UITableView*)tableView;
@end
