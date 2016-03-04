//
//  MHHelper.h
//  MHLottery
//
//  Created by Carrot on 16/3/3.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MHHelperItem : NSObject
@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* html;
@property (nonatomic, copy) NSString* ID;

+ (instancetype)helpItemWithDict:(NSDictionary*)dict;
- (instancetype)initHelpItemWithDict:(NSDictionary*)dict;
@end
