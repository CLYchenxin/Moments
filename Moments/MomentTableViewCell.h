//
//  MomentCell.h
//  Weixin
//
//  Created by chenxin on 14-10-14.
//  Copyright (c) 2014年 chenxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MomentModel;

@interface MomentTableViewCell : UITableViewCell

@property (nonatomic) MomentModel *moment;

- (void)setMomentModel:(MomentModel *)moment;

+ (CGFloat)cellHeightWithMomentModel:(MomentModel *)moment;

@end
