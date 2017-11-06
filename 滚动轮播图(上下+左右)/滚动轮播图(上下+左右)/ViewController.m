//
//  ViewController.m
//  滚动轮播图(上下+左右)
//
//  Created by bxkj on 2017/11/1.
//  Copyright © 2017年 devil. All rights reserved.
//

#import "ViewController.h"
#import "VerticalCycleCollectionView.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    VerticalCycleCollectionView *collectionView1 = [[VerticalCycleCollectionView alloc]initWithFrame:CGRectMake(40, 60, kScreenWidth - 80, 0.3 * kScreenHeight)];
    collectionView1.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:collectionView1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
