//
//  ChatItem.m
//  DBDemo
//
//  Created by xywy on 15/6/3.
//  Copyright (c) 2015年 xywy. All rights reserved.
//

#import "ChatItem.h"

@implementation ChatItem

- (NSString *)description
{
    return [NSString stringWithFormat:@"chatId=%@,type=%@,name=%@,isSuccess=%@,isDelete=%@,timeStamp=%@", _chatId,_type,_name,_isSuccess,_isDelete,_timeStamp];
}

@end
