//
//  UIBarButtonItem+SD.m
//  33rdStreet
//
//  Created by Suyq on 15/1/4.
//  Copyright (c) 2015年 33street. All rights reserved.
//

#import "UIBarButtonItem+SD.h"

@implementation UIBarButtonItem (SD)
+ (UIBarButtonItem *)barButtonItem:(NSString *)imageName tager:(id)tager action:(SEL)action;
{
    // 1.创建左边按钮
    UIButton *btn = [[UIButton alloc] init];
    // 2.设置默认状态图片
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    // 4.添加点击事件监听
    //    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [btn addTarget:tager action:action forControlEvents:UIControlEventTouchUpInside];
    // 设置frame
    btn.frame = CGRectMake(0, 0, 44, 44);
    
    // 5.根据按钮创建UIBarButtonItem
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
    // 6.返回UIBarButtonItem
    return item;
}
+ (instancetype)itemWithNorImage:(NSString *)norImageName higImage:(NSString *)higImageName targe:(id)targe action:(SEL)action
{
    // 1.创建按钮
    UIButton *btn = [[UIButton alloc] init];
    // 设置默认状态图片
    [btn setBackgroundImage:[UIImage imageNamed:norImageName] forState:UIControlStateNormal];
    // 设置高亮状态图片
    [btn setBackgroundImage:[UIImage imageNamed:higImageName] forState:UIControlStateHighlighted];
    // 设置frame
    btn.size = btn.currentBackgroundImage.size;
    // 添加监听事件
    [btn addTarget:targe action:action forControlEvents:UIControlEventTouchUpInside];
    // 返回item
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
    
}
@end
