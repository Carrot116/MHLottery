//
//  MHTarBar.m
//  MHLottery
//
//  Created by carrot on 16/2/29.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHTabBar.h"
#import "MHTabBarButton.h"

@interface MHTabBar()
@property (nonatomic, weak) MHTabBarButton* selectedButton;

@end

@implementation MHTabBar
- (void)addBarButtonWithImage:(NSString*)name selImage:(NSString*)selName{
    MHTabBarButton* btn = [MHTabBarButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:selName] forState:UIControlStateSelected];
    btn.adjustsImageWhenHighlighted = NO;
    
    [btn addTarget:self action:@selector(onClickButton:) forControlEvents:UIControlEventTouchDown];
    
    [self addSubview:btn];
    btn.tag = self.subviews.count - 1;
    if (btn.tag == 0) {
        [self onClickButton:btn];
    }
}

- (void)onClickButton:(MHTabBarButton*)sender{
    if ([self.delegate respondsToSelector:@selector(tabBar:didChangeButtonFrom:To:)]) {
        [self.delegate tabBar:self didChangeButtonFrom:self.selectedButton.tag To:sender.tag];
    }
    self.selectedButton.selected = NO;
    self.selectedButton = sender;
    self.selectedButton.selected = YES;
}

- (void)layoutSubviews{
    for (int i = 0; i < self.subviews.count; i++) {
        CGFloat btnX = i * self.bounds.size.width / self.subviews.count;
        CGFloat btnY = 0;
        CGFloat btnW = self.bounds.size.width / self.subviews.count;
        CGFloat btnH = self.bounds.size.height;
        self.subviews[i].frame = CGRectMake(btnX, btnY, btnW, btnH);
    }
}

@end
