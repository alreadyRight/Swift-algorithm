//
//  VerticalCycleCollectionView.m
//  滚动轮播图(上下+左右)
//
//  Created by bxkj on 2017/11/1.
//  Copyright © 2017年 devil. All rights reserved.
//

#import "VerticalCycleCollectionView.h"
#import "VerticalCollectionFlowLayout.h"
#import "VerticalCollectionViewCell.h"
#define count 5
static NSString * const verticalCell = @"verticalCell";
@interface VerticalCycleCollectionView()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic,strong) NSTimer * timer;

@property(nonatomic,assign) NSInteger currentPage;

@end

@implementation VerticalCycleCollectionView

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame collectionViewLayout:[[VerticalCollectionFlowLayout alloc]init]];
    if (self) {
        self.delegate = self;
        self.dataSource = self;
        [self registerClass:[VerticalCollectionViewCell class] forCellWithReuseIdentifier:verticalCell];
        dispatch_async(dispatch_get_main_queue(), ^{
            NSIndexPath *indexPath = [NSIndexPath indexPathForItem:5 inSection:0];
            [self scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionLeft animated:NO];
            [self addTimer];
        });
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return count * 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    VerticalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:verticalCell forIndexPath:indexPath];
    cell.label.text = @"adasdas";
    return cell;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    //获取当前停止的界面
    NSInteger offset = scrollView.contentOffset.y / scrollView.bounds.size.height;
    //2.第0页,跳转到 第1组的第0页 offset = _urls.count;
    //最后一页,跳转到第0组的最后一页 offset = _urls.count - 1;
    if (offset == 0 || offset == ([self numberOfItemsInSection:0] - 1)) {
        //第0页
        if (offset == 0) {
            offset = count;
        }else{
            offset = count - 1;
        }
        //重新调整contentOffset
        scrollView.contentOffset = CGPointMake(0, offset * scrollView.bounds.size.height);
    }
}

- (void)addTimer{
    NSTimer *timer = [NSTimer timerWithTimeInterval:2.0 target:self selector:@selector(nextPage) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    self.timer = timer;
}

//无线轮播
- (void)nextPage{
    NSInteger page = self.currentPage;
    NSIndexPath *scrollToPath = nil;
    if (page == count * 2 - 1) {
        scrollToPath = [NSIndexPath indexPathForItem:count inSection:0];
    } else {
        scrollToPath = [NSIndexPath indexPathForItem:page + 1 inSection:0];
    }
    [self scrollToItemAtIndexPath:scrollToPath atScrollPosition:UICollectionViewScrollPositionTop animated:YES];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    
    self.timer.fireDate = [NSDate distantFuture];
    
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    
    // 让定时器2秒之后继续执行
    self.timer.fireDate = [NSDate dateWithTimeIntervalSinceNow:2.0];
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    NSInteger offset = scrollView.contentOffset.y / scrollView.bounds.size.height + 0.499;
    NSInteger page = offset % count;
    self.currentPage = page;
}

@end
