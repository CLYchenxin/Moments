//
//  CommentView.h
//  Weixin
//
//  Created by chenxin on 14-10-14.
//  Copyright (c) 2014年 chenxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommentView : UITableView<UITableViewDataSource, UITableViewDelegate>

// 设置数据
- (void)setComments:(NSArray *)comments;

// 类方法, 返回特定数据的评论视图的高度
+ (CGFloat)commentViewHeightWithComments:(NSArray *)comments;

@end
