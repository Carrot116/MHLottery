//
//  MHHelper.m
//  MHLottery
//
//  Created by Carrot on 16/3/3.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHHelperItem.h"

@implementation MHHelperItem


+ (instancetype)helpItemWithDict:(NSDictionary*)dict{
    return [[self alloc] initHelpItemWithDict:dict];
}
- (instancetype)initHelpItemWithDict:(NSDictionary*)dict{
    if (self = [super init]) {
        _title = dict[@"title"];
        _html = dict[@"html"];
        _ID = dict[@"id"];
    }
    return self;
}
@end
