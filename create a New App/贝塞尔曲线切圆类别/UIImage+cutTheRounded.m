//
//  UIImage+cutTheRounded.m
//  给UIImageview添加圆角
//
//  Created by mac on 16/8/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "UIImage+cutTheRounded.h"

@implementation UIImage (cutTheRounded)
-(UIImage *)imageWithCornerRadius:(CGFloat)radius{
    
    
    CGRect rect = (CGRect){0.f,0.f,self.size};
    
    UIGraphicsBeginImageContextWithOptions(self.size, NO, [UIScreen mainScreen].scale);
    
    CGContextAddPath(UIGraphicsGetCurrentContext(), [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius].CGPath);
    
    CGContextClip(UIGraphicsGetCurrentContext());
    
    [self drawInRect:rect];
    
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;


}
@end
