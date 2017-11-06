//
//  VerticalCollectionViewCell.m
//  滚动轮播图(上下+左右)
//
//  Created by bxkj on 2017/11/1.
//  Copyright © 2017年 devil. All rights reserved.
//

#import "VerticalCollectionViewCell.h"
#import <Masonry.h>
@implementation VerticalCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor lightGrayColor];
        [self setupUI];
    }
    return self;
}

- (void)setupUI{
    UILabel *label = [[UILabel alloc]init];
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:16.0f];
    [self addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
    self.label = label;
}

@end
