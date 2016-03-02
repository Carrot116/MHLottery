//
//  MHSettingController.m
//  MHLottery
//
//  Created by Carrot on 16/3/2.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHSettingController.h"
#import "MHSettingItem.h"
#import "MHSettingGroup.h"

@interface MHSettingController ()
@property (nonatomic, strong) NSMutableArray* data;

@end

@implementation MHSettingController

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

        MHSettingItem* set00 = [MHSettingItem itemWithIcon:@"MorePush" title:@"推送和提醒" destVcClass:[MHSettingController class]];
        MHSettingItem* set01 = [MHSettingItem itemWithIcon:@"handShake" title:@"推送和提醒1" destVcClass:[MHSettingController class]];
        NSArray* array0      = @[set00, set01];
        MHSettingGroup* group0 = [[MHSettingGroup alloc] init];
        group0.items = array0;
        group0.header = @"HEADER1";
        group0.footer = @"footer1";
        MHSettingItem* set10 = [MHSettingItem itemWithIcon:@"IDInfo" title:@"推送和提醒2" destVcClass:[MHSettingController class]];
        NSArray* array1      = @[set10];
        MHSettingGroup* group1 = [[MHSettingGroup alloc] init];
        group1.items = array1;
        group1.header = @"HEADER2";
        [_data addObject:group0];
        [_data addObject:group1];
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
    static NSString* cellID = @"settingID";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    MHSettingItem* item = [self.data[indexPath.section] items][indexPath.row];
    cell.imageView.image = [UIImage imageNamed:item.icon];
    cell.textLabel.text = item.title;

    return cell;
}

- (NSString*)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
    return [self.data[section] footer];
}
- (NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return [self.data[section] header];
}


#pragma mark - delegate
- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    MHSettingGroup* group = self.data[indexPath.section];
    MHSettingItem* item = group.items[indexPath.row];
    UIViewController* vc = [[item.destVcClass alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
