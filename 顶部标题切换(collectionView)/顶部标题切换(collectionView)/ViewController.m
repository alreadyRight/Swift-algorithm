//
//  ViewController.m
//  顶部标题切换(collectionView)
//
//  Created by bxkj on 2017/11/9.
//  Copyright © 2017年 devil. All rights reserved.
//

#import "ViewController.h"
#import "DLTopFlowLayout.h"
#import "DLTopCollectionViewCell.h"
static NSString * topCollectionViewCell = @"topCollectionViewCell";
@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@property(nonatomic,weak) UICollectionView * topCollectionView;

@property(nonatomic,weak) UICollectionView * bottomCollectionView;

@property(nonatomic,weak) UIView * topLine;

@end

@implementation ViewController{
    NSArray *_topArr;
    NSArray *_bottomArr;
}

- (void)loadData{
    _topArr = @[@"1111",@"2222",@"3333",@"4444",@"5555",@"6666",@"7777",@"8888",@"9999"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTopCollectionView];
    [self setTopTipLine];
    [self setDataCollectionView];
}

- (void)setTopCollectionView{
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, kNavigationHeight, kScreenWidth, 30) collectionViewLayout:[[DLTopFlowLayout alloc]init]];
    collectionView.backgroundColor = [UIColor whiteColor];
    collectionView.delegate = self;
    collectionView.dataSource = self;
    [collectionView registerClass:[DLTopCollectionViewCell class] forCellWithReuseIdentifier:topCollectionViewCell];
    [self.view addSubview:collectionView];
}

- (void)setTopTipLine{
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 30, kScreenWidth / 4.0, 2)];
    view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view];
    self.topLine = view;
}

- (void)setDataCollectionView{
    
}


#pragma mark - UICollectionViewDelegate && dataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (collectionView == self.topCollectionView) {
        return _topArr.count;
    }else{
        return 0;
    }
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (collectionView == self.topCollectionView) {
        DLTopCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:topCollectionViewCell forIndexPath:indexPath];
        return cell;
    }else{
        return nil;
    }
}


@end
