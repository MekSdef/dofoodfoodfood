//
//  main-Tab-bar.m
//  create a New App
//
//  Created by cj on 16/7/13.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "main-Tab-bar.h"
#import "main-Nav-C.h"
#import "Z-D-Y-MainTabbar.h"
#import "UIView+Extension.h"

@interface main_Tab_bar ()<ZDYTabbarDelegate>

@end

@implementation main_Tab_bar

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSArray * VCarr = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"Tab-Nav-C" ofType:@"plist" ]];
   
    [VCarr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        Class VCname = NSClassFromString(obj[@"VC"]);
        UIViewController * controller = [[VCname alloc]init];
        
        [self addoneChildViewController:controller title:obj[@"VC_name"] imageName:obj[@"VC_img"] selectedImageName:obj[@"VC_img_Se"] idx:idx];
        
    }];

   
    self.selectedIndex = 0;
    Z_D_Y_MainTabbar * Tabbar = [[Z_D_Y_MainTabbar alloc]init];
    Tabbar.delegate = self;
    [self setValue:Tabbar forKey:@"tabBar"];
}
//- (UIViewController *)rootViewController:(UIViewController *)children {
//    
//   
//    return sideMenuViewController;
//    
//}

- (void)tabBarCompose
{
    UITableViewController *compose = [[UITableViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:compose];
    [self presentViewController:nav animated:YES completion:nil];
}
- (void)addoneChildViewController:(UIViewController *)childController title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)seletedImageName idx:(NSInteger)idx
{
    // 设置导航栏，tabar的title
    childController.title = title;
    
    // 设置tabar的图片
    childController.tabBarItem.image = [[UIImage imageNamed:imageName]imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];;

    [childController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:201.0/255.0 green:199.0/255.0 blue:192.0/255.0 alpha:1],
                                                         NSFontAttributeName:[UIFont systemFontOfSize:12]                                           } forState:UIControlStateNormal];
    [childController.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithRed:245.0/255.0 green:180.0/255.0 blue:92.0/255.0 alpha:1],
                                                         NSFontAttributeName:[UIFont systemFontOfSize:12]
                                                         
                                                         } forState:(UIControlStateSelected)];
    // 设置tabar选中时的图片
    UIImage *selectedImage = [UIImage imageNamed:seletedImageName];
//    if ([[UIDevice currentDevice].systemVersion doubleValue] >=7.0) {// 设置图片不可渲染(使用原图)
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    }
    childController.tabBarItem.selectedImage = selectedImage;
    
    // 创建包装子控制器的导航控制器
    
//    if (idx == 0) {
//        
//        [self addChildViewController: [self rootViewController:childController]];
//    }else{
//        main_Nav_C *nav = [[main_Nav_C alloc] initWithRootViewController:childController];
//         [self addChildViewController:nav];
//    }
    main_Nav_C *nav = [[main_Nav_C alloc] initWithRootViewController:childController];
    [self addChildViewController:nav];
    
    // 添加自控制器
   
    
}
+ (void)initialize
{
//     设置tabar字体的颜色, 这样也可以设置字体颜色和大小
     UITabBarItem *item = [UITabBarItem appearance];
      NSMutableDictionary *dict = [NSMutableDictionary dictionary];
     dict[NSForegroundColorAttributeName] = [UIColor blackColor];
     [item setTitleTextAttributes:dict forState:UIControlStateNormal];
    
}

@end
