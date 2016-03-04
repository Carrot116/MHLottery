//
//  MHSettingController.m
//  MHLottery
//
//  Created by Carrot on 16/3/2.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHBaseSettingController.h"
#import "MHSettingCell.h"
#import "MHSettingGroup.h"
#import "MHSettingItem.h"
#import "MHSettingSwitchItem.h"
#import "MHSettingArrowItem.h"

@interface MHBaseSettingController ()

@end

@implementation MHBaseSettingController

- (id)init{
    return [self initWithStyle:UITableViewStyleGrouped];
}

- (id)initWithStyle:(UITableViewStyle)style{
    if (self = [super initWithStyle:style]) {
        
    }
    return self;
}

- (NSArray*)data{
    if (_data == nil) {
        _data = [NSMutableArray array];
    }
    return _data;
}


#pragma mark - datasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.data.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[self.data[section] items] count];
}
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MHSettingCell* cell = [MHSettingCell cellWithTableView:tableView];
    
    MHSettingGroup* group = self.data[indexPath.section];
    MHSettingItem* item = group.items[indexPath.row];
    
    cell.item = item;
    return cell;
}

- (NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return [self.data[section] footer];
}
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [self.data[section] header];
}


#pragma mark - delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    MHSettingGroup* group = self.data[indexPath.section];
    MHSettingItem* item = group.items[indexPath.row];
    if (item.option ) {
        item.option();
    } else if([item isKindOfClass:[MHSettingArrowItem class]]){
        MHSettingArrowItem* arrowItem = (MHSettingArrowItem*)item;
        UIViewController* vc = [[arrowItem.destVcClass alloc]init];
        vc.title = item.title;
        vc.navigationItem.backBarButtonItem.title = self.title;
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
