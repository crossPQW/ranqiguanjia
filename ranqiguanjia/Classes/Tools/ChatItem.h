//
//  ChatItem.h
//  DBDemo
//
//  Created by xywy on 15/6/3.
//  Copyright (c) 2015年 xywy. All rights reserved.
//
//  数据库操作例子，不用的时候可以删除

#import <Foundation/Foundation.h>

@interface ChatItem : NSObject

@property (nonatomic,retain) NSString *chatId;
@property (nonatomic,retain) NSString *type;
@property (nonatomic,retain) NSString *name;
@property (nonatomic,retain) NSString *isSuccess;
@property (nonatomic,retain) NSString *isDelete;
@property (nonatomic,retain) NSString *timeStamp;

@end
