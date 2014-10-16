//
//  MomentModel.h
//  Weixin
//
//  Created by chenxin on 14-10-14.
//  Copyright (c) 2014年 chenxin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MomentModel : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *avatar;

@property (nonatomic) NSString *text;
@property (nonatomic) NSString *image;
@property (nonatomic) float imageWidth;
@property (nonatomic) float imageHeight;
@property (nonatomic) NSArray *comments;


- (instancetype)initWithName:(NSString *)name avatar:(NSString *)avatar text:(NSString *)text image:(NSString *)image imageWidth:(float)imageWdith imageHeight:(float)imageHeight comments:(NSArray *)comments;

@end
