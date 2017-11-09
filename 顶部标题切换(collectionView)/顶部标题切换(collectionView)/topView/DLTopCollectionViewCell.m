//
//  DLTopCollectionViewCell.m
//  顶部标题切换(collectionView)
//
//  Created by bxkj on 2017/11/9.
//  Copyright © 2017年 devil. All rights reserved.
//

#import "DLTopCollectionViewCell.h"

@implementation DLTopCollectionViewCell{
    UILabel *_label;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        UILabel *label = [[UILabel alloc]initWithFrame:self.bounds];
        label.font = [UIFont systemFontOfSize:12.0f];
        label.textColor = [UIColor lightGrayColor];
        [self addSubview:label];
        _label = label;
    }
    return self;
}

- (void)setTextName:(NSString *)textName{
    _label.text = textName;
}

- (void)setSelected:(BOOL)selected{
    _label.textColor = [UIColor orangeColor];
}

@end
