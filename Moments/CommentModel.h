//
//  CommentModel.h
//  Weixin
//
//  Created by chenxin on 14-10-14.
//  Copyright (c) 2014年 chenxin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CommentModel : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *text;

- (instancetype)initWithName:(NSString *)name text:(NSString *)text;

@end
