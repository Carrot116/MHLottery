//
//  ViewController.m
//  MHLottery
//
//  Created by carrot on 16/2/29.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "ViewController.h"
#import "MHTabBar.h"
#import "MHTabBarButton.h"

#define LATTER_IOS(version) ([[UIDevice currentDevice].systemVersion floatValue] >= (version))

@interface ViewController () <MHTabBarDelegate>

@end

@implementation ViewController

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
    
    UIImage* navImage = [UIImage imageNamed:@"NavBar64"];
    if (NO == LATTER_IOS(7.0)){
        navImage = [UIImage imageNamed:@"NavBar"];
    }
    
    [[UINavigationBar appearance]setBackgroundImage:navImage forBarMetrics:UIBarMetricsDefault];
}


#pragma mark - MHTabBarDelegate
- (void)tabBar:(MHTabBar *)tabBar didChangeButtonFrom:(NSInteger)from To:(NSInteger)to{
    self.selectedViewController = self.viewControllers[to];
}

@end
