//
//  SHHomeViewController.m
//  ranqiguanjia
//
//  Created by 黄少华 on 15/6/18.
//  Copyright (c) 2015年 黄少华. All rights reserved.
//

#import "SHHomeViewController.h"

@interface SHHomeViewController ()

@end

@implementation SHHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"燃气管家";
    UIBarButtonItem *leftItem = [UIBarButtonItem itemWithNorImage:@"saoyisao" higImage:@"saoyisao" targe:self action:@selector(saoyisao)];
    self.navigationItem.leftBarButtonItem = leftItem;
    
    [self loadData];
}

- (void)loadData
{
}

///扫一扫
- (void)saoyisao
{
    SHLog(@"扫一扫");
}

///上传表数
- (IBAction)uploadNumber:(UIButton *)sender {
}

///燃气管家
- (IBAction)gasManager:(UIButton *)sender {
}

@end
