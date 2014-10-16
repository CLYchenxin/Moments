//
//  MomentCell.m
//  Weixin
//
//  Created by chenxin on 14-10-14.
//  Copyright (c) 2014年 chenxin. All rights reserved.
//


#import "MomentModel.h"
#import "CommentModel.h"
#import "MomentTableViewCell.h"

#import "CommentView.h"
#import "UIViewExt.h"
#import "NSString+Size.h"
#import "UIImageView+WebCache.h"

@implementation MomentTableViewCell {
    
    MomentModel *_moment;
    
    __weak IBOutlet UIImageView *_avatarImage;
    __weak IBOutlet UILabel *_nameLabel;
    __weak IBOutlet UILabel *_textLabel;
    __weak IBOutlet UIImageView *_imageView;
    __weak IBOutlet CommentView *_commentView;
    __weak IBOutlet UIView *_commentBackgroundView;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self != nil) {
        [self setup];
    }
    
    return self;
}

- (void)awakeFromNib {
    // Initialization code
    [self setup];
}

- (void)setup {
    self.clipsToBounds = YES;
}

#pragma mark - 布局， 赋值

- (void)layoutSubviews {
    [super layoutSubviews];

    _nameLabel.text = _moment.name;
    
    if (_moment.text == nil) {
        _textLabel.height = 0;
        _textLabel.text = nil;
    } else {
        _textLabel.text = _moment.text;
        CGSize size = [_moment.text textSizeWithFont:_textLabel.font
                                   constrainedToSize:CGSizeMake(_textLabel.width, 999)
                                       lineBreakMode:NSLineBreakByWordWrapping];
        _textLabel.height = size.height;
    }
    
    if (_moment.image == nil) {
        _imageView.frame = CGRectMake(_textLabel.left, _textLabel.bottom, _moment.imageWidth, _moment.imageHeight);
        _imageView.height = 0;
    } else {
        [_imageView setImageWithURL:[NSURL URLWithString:_moment.image]];
        _imageView.frame = CGRectMake(_textLabel.left, _textLabel.bottom + 5, _moment.imageWidth, _moment.imageHeight);
    }
    
    if (_moment.comments == nil) {
        _commentBackgroundView.frame = CGRectMake(_textLabel.left, _imageView.bottom, _textLabel.width, 0);
        _commentBackgroundView.height = 0;
    } else {
        _commentBackgroundView.frame = CGRectMake(_textLabel.left, _imageView.bottom + 5, _textLabel.width, 0);
        CGFloat commentViewHeight = [CommentView commentViewHeightWithComments:_moment.comments];
        _commentBackgroundView.height = commentViewHeight + 15;
        _commentBackgroundView.backgroundColor = [UIColor brownColor];
        _commentView.frame = CGRectMake(5, 10, _commentBackgroundView.width - 10, commentViewHeight);
    }
}

#pragma mark - 数据的set， get方法

- (void)setMomentModel:(MomentModel *)moment {
    
    if (_moment != moment) {
        _moment = moment;
        [_commentView setComments:_moment.comments];
    }
}

+ (CGFloat)cellHeightWithMomentModel:(MomentModel *)moment {
    
    CGFloat height = 0;
    
    if (moment.text != nil) {
        height += [moment.text textSizeWithFont:[UIFont systemFontOfSize:14]
                              constrainedToSize:CGSizeMake(246, 999)
                                  lineBreakMode:NSLineBreakByWordWrapping].height;
    }
    
    if (moment.image != nil) {
        height += moment.imageHeight;
    }
    
    if (moment.comments != nil) {
        height += [CommentView commentViewHeightWithComments:moment.comments];
    }
    
    return height + 80;
}

@end
