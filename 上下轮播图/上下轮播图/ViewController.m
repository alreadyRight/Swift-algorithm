//
//  ViewController.m
//  上下轮播图
//
//  Created by 周冰烽 on 2017/10/30.
//  Copyright © 2017年 周冰烽. All rights reserved.
//

#import "ViewController.h"
#import "loopView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    loopView *loop = [[loopView alloc]init];
    loop.frame = CGRectMake(100, 200, 400, 250);
    [self.view addSubview:loop];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
