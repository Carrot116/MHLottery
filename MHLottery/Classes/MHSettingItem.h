//
//  MHSettingItem.h
//  MHLottery
//
//  Created by Carrot on 16/3/2.
//  Copyright © 2016年 carrot. All rights reserved.
//

typedef void (^SettingItemOptionBlock)();

#import <Foundation/Foundation.h>

@interface MHSettingItem : NSObject
@property (nonatomic, copy) NSString* icon;
@property (nonatomic, copy) NSString* title;

@property (nonatomic, copy) SettingItemOptionBlock option;
+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title;

+ (instancetype)itemWithTitle:(NSString*)title;
@end
