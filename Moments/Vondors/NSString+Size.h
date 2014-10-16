//
//  NSString+Size.h
//  Weixin
//
//  Created by chenxin on 14-10-15.
//  Copyright (c) 2014年 chenxin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface NSString (Size)

- (CGSize)textSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)size lineBreakMode:(NSLineBreakMode)lineBreakMode;

@end
