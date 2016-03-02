//
//  MHNavigationController.m
//  MHLottery
//
//  Created by Carrot on 16/3/1.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "MHNavigationController.h"

@interface MHNavigationController ()

@end

@implementation MHNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (void)initialize{
    // 设置导航栏主题
    UINavigationBar *navBar = [UINavigationBar appearance];
    // 设置背景图片
    UIImage* navImage = [UIImage imageNamed:@"NavBar64"];
    if (NO == LATTER_IOS(7.0)){
        navImage = [UIImage imageNamed:@"NavBar"];
    }
    [navBar setBackgroundImage:navImage forBarMetrics:UIBarMetricsDefault];
    // 导航返回按钮
    [navBar setTintColor:[UIColor whiteColor]];

    
    // 设置标题文字颜色
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:16];
    [navBar setTitleTextAttributes:attrs];
    
    // 导航按钮设置
    UIBarButtonItem* navItem = [UIBarButtonItem appearance];
    navItem.tintColor = [UIColor whiteColor];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed = YES;
    [super pushViewController:viewController animated:animated];
}

@end
