//
//  MHSettingItem.h
//  MHLottery
//
//  Created by Carrot on 16/3/2.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MHSettingItem : NSObject
@property (nonatomic, copy) NSString* icon;
@property (nonatomic, copy) NSString* title;
@property (nonatomic, assign) Class destVcClass;

+ (instancetype)itemWithIcon:(NSString*)icon title:(NSString*)title destVcClass:(Class)class;
@end
