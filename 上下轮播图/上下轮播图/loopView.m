//
//  loopView.m
//  上下轮播图
//
//  Created by 周冰烽 on 2017/10/30.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

#import "loopView.h"
#import "ImageFlowLayout.h"
#import "DLCollectionViewCell.h"

@interface loopView()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation loopView{
    NSInteger _page;
    NSArray *_urls;
}

- (instancetype)init{
    self = [super initWithFrame:CGRectZero collectionViewLayout:[[ImageFlowLayout alloc]init]];
    if (self) {
        _urls = @[@"AAAAAAAAAAAA",@"BBBBBBBBBB",@"CCCCCCCCC",@"DDDDDDDDD",@"EEEEEEEEEEEE"];
        self.backgroundColor = [UIColor greenColor];
        self.delegate = self;
        self.dataSource = self;
        [self registerClass:[DLCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
        _page = 0;
        dispatch_async(dispatch_get_main_queue(), ^{
            [self scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:_urls.count inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:NO];
        });
//        [self addTimer];
        
    }
    return self;
}

- (void)addTimer{
    [NSTimer scheduledTimerWithTimeInterval:2.0 target:self selector:@selector(nextPage) userInfo:nil repeats:YES];
}

- (void)nextPage{
    NSInteger Page = _page++ % _urls.count;
    [self layoutIfNeeded];
    
    [self scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:Page inSection:0] atScrollPosition:UICollectionViewScrollPositionBottom animated:YES];
    
}

//- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
//    CGFloat width = self.frame.size.width;
//    NSInteger index = scrollView.contentOffset.x / width;
//
//}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSInteger offset = scrollView.contentOffset.y / scrollView.bounds.size.height;
    if (offset == 0) {
        offset = _urls.count;
        scrollView.contentOffset = CGPointMake(0, offset * scrollView.bounds.size.height);
    }
    if (offset == [self numberOfItemsInSection:0] - 1) {
        offset = _urls.count - 1;
        scrollView.contentOffset = CGPointMake(0, offset * scrollView.bounds.size.height);
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return _urls.count * 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    DLCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.label.text = _urls[indexPath.item % _urls.count];
    return cell;
}







@end
