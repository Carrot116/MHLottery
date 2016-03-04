//
//  MHSettingArrowItem.h
//  MHLottery
//
//  Created by Carrot on 16/3/3.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHSettingItem.h"

@interface MHSettingArrowItem : MHSettingItem
@property (nonatomic, assign) Class destVcClass;

+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title destVcClass:(Class)class;
+ (instancetype)itemWithTitle:(NSString*)title destVcClass:(Class)class;
@end
