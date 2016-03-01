//
//  MHTarBar.h
//  MHLottery
//
//  Created by carrot on 16/2/29.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Availability.h>

@class MHTabBar;

@protocol MHTabBarDelegate <NSObject>

@optional
- (void)tabBar:(MHTabBar*)tabBar didChangeButtonFrom:(NSInteger)from To:(NSInteger)to;

@end

@interface MHTabBar : UIView

@property (nonatomic, weak) id<MHTabBarDelegate> delegate;
/** 添加TabBarButton */
- (void)addBarButtonWithImage:(NSString*)name selImage:(NSString*)selName;
@end
