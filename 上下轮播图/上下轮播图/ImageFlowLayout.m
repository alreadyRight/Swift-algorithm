//
//  ImageFlowLayout.m
//  上下轮播图
//
//  Created by 周冰烽 on 2017/10/30.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

#import "ImageFlowLayout.h"

@implementation ImageFlowLayout

- (void)prepareLayout{
    [super prepareLayout];
    self.itemSize = CGSizeMake(400, 250);
    self.minimumLineSpacing = 0;
    self.minimumInteritemSpacing = 0;
    self.collectionView.bounces = NO;
    self.collectionView.pagingEnabled = YES;
    self.scrollDirection = UICollectionViewScrollDirectionVertical;
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
}

@end
