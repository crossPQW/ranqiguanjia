//
//  SHNavigationController.m
//  ranqiguanjia
//
//  Created by 黄少华 on 15/6/18.
//  Copyright (c) 2015年 黄少华. All rights reserved.
//

#import "SHNavigationController.h"

@interface SHNavigationController ()

@end

@implementation SHNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

+ (void)initialize
{
    [self setupNavBarTheme];
}

+ (void)setupNavBarTheme
{
    // 1.取出appearance对象
    UINavigationBar *nacBar = [UINavigationBar appearance];
    [nacBar setTintColor:[UIColor redColor]];
    
    [nacBar setBackgroundImage:[UIImage imageNamed:@"nav"] forBarMetrics:UIBarMetricsDefault];
    // 2.设置标题属性
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = [UIColor whiteColor];
    
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowOffset = CGSizeZero;
    textAttrs[NSShadowAttributeName] = shadow;
    textAttrs[NSVerticalGlyphFormAttributeName] = @(0);
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:18];
    [nacBar setTitleTextAttributes:textAttrs];
    
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}


@end
