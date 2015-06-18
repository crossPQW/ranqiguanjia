//
//  SHTabBarController.m
//  ranqiguanjia
//
//  Created by 黄少华 on 15/6/18.
//  Copyright (c) 2015年 黄少华. All rights reserved.
//

#import "SHTabBarController.h"
#import "SHHomeViewController.h"
#import "SHInfomationViewController.h"
#import "SHLifeViewController.h"
#import "SHPersonViewController.h"
#import "SHNavigationController.h"
@interface SHTabBarController ()

@end

@implementation SHTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpChildViewControllers];
}

- (void)setUpChildViewControllers
{
    //首页
    UIStoryboard *homesb = [UIStoryboard storyboardWithName:@"Home" bundle:nil];
    SHHomeViewController *home = [homesb instantiateViewControllerWithIdentifier:@"SHHomeViewController"];
    [self setupChildViewController:home title:@"首页" imageName:@"home" selectedImageName:@"home_selected"];
    
    //生活
    UIStoryboard *lifesb = [UIStoryboard storyboardWithName:@"Life" bundle:nil];
    SHLifeViewController *life = [lifesb instantiateViewControllerWithIdentifier:@"SHLifeViewController"];
    [self setupChildViewController:life title:@"生活" imageName:@"life" selectedImageName:@"life_selected"];
    
    //资讯
    UIStoryboard *infosb = [UIStoryboard storyboardWithName:@"Infomation" bundle:nil];
    SHInfomationViewController *info = [infosb instantiateViewControllerWithIdentifier:@"SHInfomationViewController"];
    [self setupChildViewController:info title:@"资讯" imageName:@"info" selectedImageName:@"info_selected"];
    
    //我的
    UIStoryboard *personsb = [UIStoryboard storyboardWithName:@"Person" bundle:nil];
    SHPersonViewController *person = [personsb instantiateViewControllerWithIdentifier:@"SHPersonViewController"];
    [self setupChildViewController:person title:@"我的" imageName:@"me" selectedImageName:@"me_selected"];
}


/**
 *  初始化一个子控制器
 *
 *  @param childVc           需要初始化的子控制器
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    // 1.设置控制器的属性
    childVc.title = title;
    
    [childVc.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -3)];
    
    [childVc.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:209/255.f green:0.f blue:26/255.f alpha:1.f],NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    [childVc.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:182/255.f green:182/255.f blue:182/255.f alpha:1.f],NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    
    // 设置图标
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    [childVc.tabBarItem setImageInsets:UIEdgeInsetsMake(0, 0, 0, 0)];
    // 设置选中的图标
    UIImage *selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVc.tabBarItem.selectedImage = selectedImage;
    
    // 2.包装一个导航控制器
    SHNavigationController *nav = [[SHNavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
}


@end
