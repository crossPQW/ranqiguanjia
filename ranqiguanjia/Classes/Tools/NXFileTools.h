//
//  NXFileTools.h
//  疾病助手
//
//  Created by linyibin on 15/1/4.
//  Copyright (c) 2015年 NXAristotle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NXFileTools : NSObject
/**
 *  返回文件大小
 *
 *  @param filePath 文件路径
 *
 *  @return 文件大小,单位:字节
 */
+ (long long)fileSizeAtPath:(NSString *)filePath;

/**
 *  返回文件夹内容大小,单位M
 *
 *  @param folderPath 文件夹路径
 *
 *  @return 文件夹大小,单位:M
 */
+ (float)folderSizeAtPath:(NSString *)folderPath;

@end
