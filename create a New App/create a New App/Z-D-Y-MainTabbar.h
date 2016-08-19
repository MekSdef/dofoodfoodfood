//
//  Z-D-Y-MainTabbar.h
//  create a New App
//
//  Created by cj on 16/7/13.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZDYTabbarDelegate <NSObject>

@optional

- (void)tabBarCompose;

@end

@interface Z_D_Y_MainTabbar : UITabBar

@property(weak,nonatomic)id<ZDYTabbarDelegate>Composedelegate;

@end
