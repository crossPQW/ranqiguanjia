//
//  NSString+isEmpty.m
//  WKDoctor
//
//  Created by 黄少华 on 15/6/10.
//  Copyright (c) 2015年 NXAristotle. All rights reserved.
//

#import "NSString+isEmpty.h"

@implementation NSString (isEmpty)

- (BOOL)isEmpty{
    if (!self) {
        return YES;
    } else {
        NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        
        NSString *trimedString = [self stringByTrimmingCharactersInSet:set];
        
        if ([trimedString length] == 0) {
            return YES;
        } else {
            return NO;
        }
    }
}
@end
