//
//  AppDelegate.m
//  create a New App
//
//  Created by cj on 16/7/13.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "AppDelegate.h"
#import "main-Tab-bar.h"
#import "JASidePanelController.h"
#import "DrawerMemueController.h"

//Debug
#import "x-xViewController.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    main_Tab_bar * TabBar = [[main_Tab_bar alloc]init];
    NSLog(@"%@ tabbar",TabBar);
    JASidePanelController * sidePanel = [[JASidePanelController alloc]init];
    sidePanel.leftPanel =[[DrawerMemueController alloc]init];
//    x_xViewController * clas =  [[x_xViewController alloc]init];
//    sidePanel.centerPanel = [[UINavigationController alloc]initWithRootViewController:clas]  ;
    sidePanel.centerPanel  = TabBar;
    sidePanel.leftGapPercentage = 0.4f;
    self.window.rootViewController = sidePanel;
    [self.window makeKeyAndVisible];

    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
