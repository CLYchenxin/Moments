//
//  CommentView.m
//  Weixin
//
//  Created by chenxin on 14-10-14.
//  Copyright (c) 2014年 chenxin. All rights reserved.
//

#import "CommentView.h"
#import "CommentModel.h"
#import "NSString+Size.h"

#define COMMENTVIEW_TEXT_FONT [UIFont systemFontOfSize:12]
#define COMMENTVIEW_WIDTH 246

@implementation CommentView {
    NSArray *_comments;
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self != nil) {
        [self setup];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self setup];
}

- (void)setup {
    self.delegate = self;
    self.dataSource = self;
    self.scrollEnabled = NO;
    [self registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CommentView"];
}

- (void)setComments:(NSArray *)comments {
    
    if (_comments != comments) {
        _comments = comments;
        [self reloadData];
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return _comments.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CommentView"];
    
    CommentModel *comment = _comments[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@:%@", comment.name, comment.text];
    cell.textLabel.numberOfLines = 0;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.font = COMMENTVIEW_TEXT_FONT;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CommentModel *comment = _comments[indexPath.row];
    return [CommentView rowHeightForComment:comment];
}

+ (CGFloat)rowHeightForComment:(CommentModel *)comment {
    
    CGSize size = [[NSString stringWithFormat:@"%@:%@", comment.name, comment.text] textSizeWithFont:COMMENTVIEW_TEXT_FONT constrainedToSize:CGSizeMake(COMMENTVIEW_WIDTH, 999) lineBreakMode:NSLineBreakByWordWrapping];
    
    return size.height;
}

+ (CGFloat)commentViewHeightWithComments:(NSArray *)comments {
    
    CGFloat height = 0;
    for (CommentModel *comment in comments) {
        height += [CommentView rowHeightForComment:comment];
    }
    
    return height;
}

@end
