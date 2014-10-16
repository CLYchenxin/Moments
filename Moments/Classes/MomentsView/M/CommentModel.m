//
//  CommentModel.m
//  Weixin
//
//  Created by chenxin on 14-10-14.
//  Copyright (c) 2014年 chenxin. All rights reserved.
//

#import "CommentModel.h"

@implementation CommentModel

- (instancetype)initWithName:(NSString *)name text:(NSString *)text {
    self = [super init];
    if (self != nil) {
        
        self.name = name;
        self.text = text;
        
    }
    return self;
}

@end
