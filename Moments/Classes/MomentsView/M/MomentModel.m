//
//  MomentModel.m
//  Weixin
//
//  Created by chenxin on 14-10-14.
//  Copyright (c) 2014年 chenxin. All rights reserved.
//

#import "MomentModel.h"

@implementation MomentModel

- (instancetype)initWithName:(NSString *)name avatar:(NSString *)avatar text:(NSString *)text image:(NSString *)image imageWidth:(float)imageWdith imageHeight:(float)imageHeight comments:(NSArray *)comments
{
    self = [super init];
    if (self != nil) {
        
        self.name = name;
        self.avatar = avatar;
        self.text = text;
        self.image = image;
        self.imageHeight = imageHeight;
        self.imageWidth = imageWdith;
        self.comments = comments;
        
    }
    return self;
}

@end
