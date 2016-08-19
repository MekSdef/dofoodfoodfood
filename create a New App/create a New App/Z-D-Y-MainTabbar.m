//
//  Z-D-Y-MainTabbar.m
//  create a New App
//
//  Created by cj on 16/7/13.
//  Copyright © 2016年 岁月是把杀猪刀. All rights reserved.
//

#import "Z-D-Y-MainTabbar.h"
#import "UIView+Extension.h"
@interface Z_D_Y_MainTabbar()
@property (nonatomic, weak)UIButton *composeBtn;
@end

@implementation Z_D_Y_MainTabbar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
//        if (![[UIDevice currentDevice].systemVersion doubleValue]>=7.0) {
            self.backgroundColor = [UIColor greenColor];
//            self.backgroundImage = [UIImage imageNamed:@"post_normal"];
//        }
//        self.selectionIndicatorImage = [UIImage imageNamed:@"post_normal"];
        
        [self setUpComposeBtn];
    }
    return self;
}
- (void)setUpComposeBtn
{
    // 创建UIButton
    
    UIButton *addBtn = [[UIButton alloc] init];
    // 设置常态下，和高亮状态下的背景图
    [addBtn setBackgroundImage:[UIImage imageNamed:@"post_normal"] forState:UIControlStateNormal];
    [addBtn setBackgroundImage:[UIImage imageNamed:@"post_normal"] forState:UIControlStateHighlighted];
    
    // 设置UIButton的ImageView
    [addBtn setImage:[UIImage imageNamed:@"post_normal"] forState:UIControlStateNormal];
    [addBtn setImage:[UIImage imageNamed:@"post_normal"] forState:UIControlStateHighlighted];
    [addBtn addTarget:self action:@selector(addClick:) forControlEvents:UIControlEventTouchUpInside];
    
    self.composeBtn = addBtn;
    [self addSubview:addBtn];
}
- (void)addClick:(UIButton *)addBtn
{
    if ([self.Composedelegate respondsToSelector:@selector(tabBarCompose)]) {
        
        NSLog(@"方法：%s\n文件：%s\n行数：%d",__FUNCTION__,__FILE__,__LINE__);
         [self.Composedelegate tabBarCompose];
    }
}

// 设置子控件的frame
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // 设置size
  
    self.composeBtn.size = self.composeBtn.currentBackgroundImage.size;
    self.composeBtn.centerX = self.width * 0.5;
    self.composeBtn.centerY = self.height * 0.1;
    
    int index = 0;
    for (UIView *tabarButton in self.subviews) {
        if ([tabarButton isKindOfClass: NSClassFromString(@"UITabBarButton")]) {
            
            CGFloat tabarW = self.width/(self.items.count + 1);
            CGFloat tabarH = self.height;
            CGFloat tabarY = 0;
            if (index >= 2) {
                tabarButton.frame = CGRectMake((index + 1) * tabarW, tabarY, tabarW, tabarH);
            }else
            {
                tabarButton.frame = CGRectMake(index * tabarW, tabarY, tabarW, tabarH);
            }
            index ++;
        }
        continue;
    }
}

@end
