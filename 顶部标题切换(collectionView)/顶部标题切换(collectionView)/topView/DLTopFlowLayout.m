//
//  DLTopFlowLayout.m
//  顶部标题切换(collectionView)
//
//  Created by bxkj on 2017/11/9.
//  Copyright © 2017年 devil. All rights reserved.
//

#import "DLTopFlowLayout.h"

@implementation DLTopFlowLayout

- (void)prepareLayout{
    [super prepareLayout];
    self.itemSize = CGSizeMake(kScreenWidth / 4.0, 30);
    self.minimumLineSpacing = 0;
    self.minimumInteritemSpacing = 0;
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.bounces = NO;
}

@end
