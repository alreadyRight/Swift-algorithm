//
//  VerticalCollectionFlowLayout.m
//  滚动轮播图(上下+左右)
//
//  Created by bxkj on 2017/11/1.
//  Copyright © 2017年 devil. All rights reserved.
//

#import "VerticalCollectionFlowLayout.h"

@implementation VerticalCollectionFlowLayout

- (void)prepareLayout{
    [super prepareLayout];
    self.itemSize = self.collectionView.bounds.size;
    self.minimumLineSpacing = 0;
//    self.minimumInteritemSpacing = 0;
    self.scrollDirection = UICollectionViewScrollDirectionVertical;
    self.collectionView.pagingEnabled = YES;
    self.collectionView.bounces = NO;
    self.collectionView.showsVerticalScrollIndicator = NO;
}

@end
