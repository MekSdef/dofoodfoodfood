//
//  main-Nav-C.m
//  create a New App
//
//  Created by cj on 16/7/13.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "main-Nav-C.h"

@interface main_Nav_C ()

@end

@implementation main_Nav_C

-(void)initialize{
    UINavigationBar * navbar = [UINavigationBar appearance];
    [navbar setBarStyle:2];
    [navbar setBackgroundImage:[UIImage imageNamed:@"navbac"] forBarMetrics:(UIBarMetricsDefault)];
    [navbar setTitleTextAttributes:@{
                                     NSFontAttributeName :[UIFont boldSystemFontOfSize:18],
                                     NSForegroundColorAttributeName:[UIColor whiteColor],
                                     }];
    
}
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) { // 如果现在push的不是栈底控制器
        // 隐藏tabar
        viewController.hidesBottomBarWhenPushed = YES;
        // 设置导航栏按钮
    }
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
    [self popViewControllerAnimated:YES];
}
- (void)more
{
    [self popToRootViewControllerAnimated:YES];
}


//- (void)viewDidLoad {
//    [super viewDidLoad];
//
//
//
//
//
//
//}


@end
