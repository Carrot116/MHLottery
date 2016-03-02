//
//  MHSettingGroup.h
//  MHLottery
//
//  Created by Carrot on 16/3/2.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MHSettingGroup : NSObject
@property (nonatomic, copy) NSString* header;
@property (nonatomic, copy) NSString* footer;

@property (nonatomic, strong) NSArray* items;

@end
