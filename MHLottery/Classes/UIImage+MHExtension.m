//
//  UIImage+MHExtension.m
//  MHLottery
//
//  Created by Carrot on 16/3/2.
//  Copyright © 2016年 carrot. All rights reserved.
//

#import "UIImage+MHExtension.h"

@implementation UIImage (MHExtension)

+ (UIImage*)resizeableWithName:(NSString*)name{
    UIImage* image = [UIImage imageNamed:name];
    CGFloat w = image.size.width * 0.5;
    CGFloat h = image.size.height * 0.5;
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(w,h,w,h) resizingMode:UIImageResizingModeTile];
}

@end
