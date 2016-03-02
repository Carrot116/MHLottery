//
//  MHHallController.m
//  MHLottery
//
//  Created by Carrot on 16/3/2.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHHallController.h"

@interface MHHallController()

@end


@implementation MHHallController

- (void)viewDidLoad{
    [super viewDidLoad];
}


#pragma mark - datesource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 50;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* cellID = @"HallCell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = [NSString stringWithFormat:@"大厅 ---- %d ----", indexPath.row];
    return cell;
}

@end
