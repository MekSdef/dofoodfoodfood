//
//  x-xViewController.m
//  create a New App
//
//  Created by cj on 16/7/13.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "x-xViewController.h"

@interface x_xViewController ()

@end

@implementation x_xViewController


- (void)viewDidLoad {
    [super viewDidLoad];
   

    UIBarButtonItem * leftItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"home_normal"] style:UIBarButtonItemStyleDone target:self action:@selector(leftMenuAction)];
    self.navigationItem.leftBarButtonItem = leftItem;
}
-(void)leftMenuAction{

    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
