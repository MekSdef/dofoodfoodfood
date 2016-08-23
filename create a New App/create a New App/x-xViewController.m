//
//  x-xViewController.m
//  create a New App
//
//  Created by cj on 16/7/13.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "x-xViewController.h"



#import "JASidePanelController.h"
@interface x_xViewController ()

@end

@implementation x_xViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self.view setBackgroundColor:[UIColor greenColor]];
    
    JASidePanelController * JAS = [[JASidePanelController alloc]init];
        self.navigationItem.leftBarButtonItem = [JAS leftButtonForCenterPanel];
    

}
-(void)leftMenuAction{

  
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
