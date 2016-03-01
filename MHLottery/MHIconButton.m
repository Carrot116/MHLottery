//
//  MHIconButton.m
//  MHLottery
//
//  Created by carrot on 16/3/1.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import <Availability.h>
#import "MHIconButton.h"

@interface MHIconButton()

@property (nonatomic, strong) UIFont* titleFont;
@end

@implementation MHIconButton

- (nullable instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)rect{
    if (self = [super initWithFrame:rect]) {
        [self setup];
    }
    return self;
}

- (void)setup{
    self.titleFont = [UIFont systemFontOfSize:15];
    self.titleLabel.font = self.titleFont;
    self.imageView.contentMode = UIViewContentModeCenter;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    if (self.titleFont == nil) return CGRectZero;
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat w = 0;
    NSMutableDictionary* dict = [NSMutableDictionary dictionary];
    [dict setObject:self.titleFont forKey:NSFontAttributeName];
    if (NO == LATTER_IOS(7.0)){
#ifdef __IPHONE_7_0
        w = [self.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size.width;
#else
        w = [self.currentTitle sizeWithAttributes:dict].width;
#endif
    } else {
        w = [self.currentTitle sizeWithAttributes:dict].width;
    }
    CGFloat h = contentRect.size.height;
    return CGRectMake(x,y,w,h);
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGFloat w = 20;
    CGFloat x = contentRect.size.width - w;
    CGFloat y = 0;
    CGFloat h = contentRect.size.height;
    return CGRectMake(x,y,w,h);
}

- (void)setHighlighted:(BOOL)highlighted{
    
}

@end
