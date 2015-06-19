//
//  UIBarButtonItem+SD.h
//  33rdStreet
//
//  Created by Suyq on 15/1/4.
//  Copyright (c) 2015年 33street. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (SD)

+ (UIBarButtonItem *)barButtonItem:(NSString *)imageName tager:(id)tager action:(SEL)action;
+ (instancetype)itemWithNorImage:(NSString *)norImageName higImage:(NSString *)higImageName targe:(id)targe action:(SEL)action;
@end
