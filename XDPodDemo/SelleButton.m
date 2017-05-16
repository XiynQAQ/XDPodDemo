//
//  SelleButton.m
//  XDPodDemo
//
//  Created by DingJia on 2017/5/16.
//  Copyright © 2017年 席亚楠. All rights reserved.
//
#define MarkButtonTitleW 40

#import "SelleButton.h"
@interface SelleButton ()

@end
@implementation SelleButton

+ (instancetype)SelleButton
{
    return [[self alloc] init];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // 高亮的时候不要自动调整图标
        self.adjustsImageWhenHighlighted = NO;
        self.titleLabel.font = [UIFont boldSystemFontOfSize:15];
        //self.titleLabel.textColor = [UIColor whiteColor];
        self.imageView.contentMode = UIViewContentModeCenter;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        // 背景
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    return self;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageY = 0;
    CGFloat imageX = 0;
    CGFloat imageW = contentRect.size.width - MarkButtonTitleW;
    CGFloat imageH = contentRect.size.height;
    return CGRectMake(imageX, imageY, imageW, imageH);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleY = 0;
    CGFloat titleW = MarkButtonTitleW;
    CGFloat titleX = contentRect.size.width - titleW;
    CGFloat titleH = contentRect.size.height;
    return CGRectMake(titleX, titleY, titleW, titleH);
}

/*
 - (CGRect)backgroundRectForBounds:(CGRect)bounds;
 - (CGRect)contentRectForBounds:(CGRect)bounds;
 - (CGRect)titleRectForContentRect:(CGRect)contentRect;
 - (CGRect)imageRectForContentRect:(CGRect)contentRect;
 */

@end
