//
//  DrawerMemueController.m
//  create a New App
//
//  Created by mac on 16/8/19.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "DrawerMemueController.h"
#import "UIImage+cutTheRounded.h"


@interface DrawerMemueController()<UITableViewDataSource,UITableViewDelegate>
@property(strong,nonatomic)UITableView * tableView;
@end

@implementation DrawerMemueController

static NSString * cellid = @"cellid";

- (void)viewDidLoad{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:self.tableView];
 
   
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellid];
    if (cell) {
        cell = [[UITableViewCell alloc]initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:cellid];
    }
   
    UIImage * image = [[UIImage imageNamed:@"tabbar_compose_button_highlighted"] imageWithCornerRadius:35];
    cell.imageView.image = image;
   
 
    
    
    return cell;
}
- (UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc]initWithFrame:self.view.frame style:(UITableViewStylePlain)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellid"];

      
    }
    return _tableView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==0) {
        return 200;
    }
    return 160;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    
    return 240;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView * headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 80)];
    headerView.backgroundColor = [UIColor blueColor];
    UIImageView * imageV =  [[UIImageView alloc]initWithFrame:CGRectMake(0, 20, 80, 80)];
    
   
//    NSString * path = [[NSBundle mainBundle] pathForResource:@"tabbar_compose_button_highlighted" ofType:@"png"];
//    imageV.image = [UIImage imageWithContentsOfFile:path];
    UIImage * image = [[UIImage alloc]init];
    image = [UIImage imageNamed:@"tabbar_compose_button_highlighted"];
    imageV.image = [image imageWithCornerRadius:40];
    
    [headerView addSubview:imageV];
   
    return headerView;
}
@end
