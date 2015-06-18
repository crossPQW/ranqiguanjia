//
//  NXFileTools.m
//  疾病助手
//
//  Created by linyibin on 15/1/4.
//  Copyright (c) 2015年 NXAristotle. All rights reserved.
//

#import "NXFileTools.h"



@implementation NXFileTools
/**
 *  返回文件大小
 *
 *  @param filePath 文件路径
 *
 *  @return 文件大小,单位:字节
 */
+ (long long)fileSizeAtPath:(NSString *)filePath {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:filePath]){
        return [[fileManager attributesOfItemAtPath:filePath error:nil] fileSize];
    }
    return 0;
}

/**
 *  返回文件夹内容大小,单位M
 *
 *  @param folderPath 文件夹路径
 *
 *  @return 文件夹大小,单位:M
 */
+ (float)folderSizeAtPath:(NSString *)folderPath {
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if (![fileManager fileExistsAtPath:folderPath]) return 0;
    NSEnumerator *childFilesEnumerator = [[fileManager subpathsAtPath:folderPath] objectEnumerator];
    NSString *fileName;
    long long folderSize = 0;
    while ((fileName = [childFilesEnumerator nextObject]) != nil){
        NSString *fileAbsolutePath = [folderPath stringByAppendingPathComponent:fileName];
        folderSize += [self fileSizeAtPath:fileAbsolutePath];
    }
    return folderSize / (1024.0 * 1024.0);
}
@end
