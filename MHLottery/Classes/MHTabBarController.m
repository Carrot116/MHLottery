//
//  ViewController.m
//  MHLottery
//
//  Created by carrot on 16/2/29.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHTabBarController.h"
#import "MHTabBar.h"
#import "MHTabBarButton.h"


@interface MHTabBarController () <MHTabBarDelegate>

@end

@implementation MHTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MHTabBar* myTabBar = [[MHTabBar alloc] init];
    myTabBar.backgroundColor = [UIColor greenColor];
    myTabBar.frame = self.tabBar.bounds;
    myTabBar.delegate = self;
    [self.tabBar addSubview:myTabBar];
    
    for (int i = 0; i < self.viewControllers.count; i++) {
        NSString* name = [NSString stringWithFormat:@"TabBar%d", i+1];
        NSString* selName = [NSString stringWithFormat:@"TabBar%dSel", i+1];
        [myTabBar addBarButtonWithImage:name selImage:selName];
    }
}


#pragma mark - MHTabBarDelegate
- (void)tabBar:(MHTabBar *)tabBar didChangeButtonFrom:(NSInteger)from To:(NSInteger)to{
    self.selectedViewController = self.viewControllers[to];
}

@end
