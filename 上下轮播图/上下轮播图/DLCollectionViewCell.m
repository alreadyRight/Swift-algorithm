//
//  DLCollectionViewCell.m
//  上下轮播图
//
//  Created by 周冰烽 on 2017/10/30.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

#import "DLCollectionViewCell.h"

@implementation DLCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        NSLog(@"%lf",arc4random_uniform(256)/255.0);
//        self.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0];
        UILabel *label = [[UILabel alloc]initWithFrame:self.frame];
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        label.font = [UIFont systemFontOfSize:14.0f];
        [self addSubview:label];
        self.label = label;
    }
    return self;
}

@end
