//
//  MHSettingCell.m
//  MHLottery
//
//  Created by Carrot on 16/3/3.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHSettingItem.h"
#import "MHSettingArrowItem.h"
#import "MHSettingSwitchItem.h"

#import "MHSettingCell.h"
@interface MHSettingCell()

@property (nonatomic, strong) UIImageView* arrowView;
@property (nonatomic, strong) UISwitch* switchView;

@end

@implementation MHSettingCell

+ (instancetype)cellWithTableView:(UITableView*)tableView{
    static NSString* cellID = @"settingID";
    MHSettingCell* cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[MHSettingCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        ;
    }
    return self;
}

- (UIImageView*)arrowView{
    if (_arrowView == nil) {
        _arrowView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _arrowView;
}

- (UISwitch*)switchView{
    if (_switchView == nil) {
        _switchView = [[UISwitch alloc] init];
    }
    return _switchView;
}

- (void)setItem:(MHSettingItem *)item{
    _item = item;
    
    self.textLabel.text = item.title;
    if (item.icon) {
        self.imageView.image = [UIImage imageNamed:item.icon];
    } else {
        self.imageView.image = nil;
    }
    
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    if ([self.item isKindOfClass:[MHSettingArrowItem class]]) {
        self.accessoryView = self.arrowView;
    } else if([self.item isKindOfClass:[MHSettingSwitchItem class]]){
        self.accessoryView = self.switchView;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    } else{
        _switchView = nil;
        _arrowView = nil;
        
        self.accessoryType = UITableViewCellAccessoryNone;
    }
}

@end
