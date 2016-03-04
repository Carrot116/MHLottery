//
//  MHSettingHelpController.m
//  MHLottery
//
//  Created by Carrot on 16/3/3.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHSettingHelpController.h"
#import "MHSettingGroup.h"
#import "MHSettingItem.h"
#import "MHSettingArrowItem.h"

#import "MHHelperItem.h"
#import "MHHelpWebController.h"
#import "MHNavigationController.h"

@interface MHSettingHelpController()

@property (nonatomic, strong) NSArray* htmls;

@end


@implementation MHSettingHelpController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self setupData];
}
- (NSArray*)htmls{
    if (_htmls == nil) {
        NSData* data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"help" ofType:@"json"]];
        NSArray* jsonArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        NSMutableArray* htmls = [NSMutableArray array];
        for (int i = 0; i < jsonArray.count; i++) {
            MHHelperItem* item = [MHHelperItem helpItemWithDict:jsonArray[i]];
            [htmls addObject:item];
        }
        _htmls = htmls;
    }
    return _htmls;
}

- (void)setupData{
    MHSettingGroup* group = [[MHSettingGroup alloc] init];
    NSMutableArray* array = [NSMutableArray array];
    for (int i = 0; i < self.htmls.count; i++) {
        MHHelperItem* htmlItem = self.htmls[i];
        MHSettingItem* item = [MHSettingArrowItem itemWithTitle:htmlItem.title destVcClass:[MHHelpWebController class]];
        [array addObject:item];
    }
    group.items = array;
    [self.data addObject:group];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    MHHelpWebController *webVC = [[MHHelpWebController alloc] init];
    webVC.item = self.htmls[indexPath.row];
    MHNavigationController *nav = [[MHNavigationController alloc] initWithRootViewController:webVC];
    [self presentViewController:nav animated:YES completion:nil];
}
@end
