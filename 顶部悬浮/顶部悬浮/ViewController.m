//
//  ViewController.m
//  顶部悬浮
//
//  Created by bxkj on 2017/11/16.
//  Copyright © 2017年 devil. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTableView];
}

- (void)setTableView{
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.estimatedRowHeight = 0;
    tableView.estimatedSectionFooterHeight = 0;
    tableView.estimatedSectionHeaderHeight = 0;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:tableView];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 0.1;
    }else{
        return 50;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 300;
    }else{
        return 1000;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if (section == 1) {
        UIView *view = [[UIView alloc]init];
        view.backgroundColor = [UIColor whiteColor];
        [self subBtnsWithIndex:0 title:@"色即是空" superView:view];
        [self subBtnsWithIndex:1 title:@"金沙江是" superView:view];
        [self subBtnsWithIndex:2 title:@"死奥斯里塞满" superView:view];
        [self subBtnsWithIndex:3 title:@"按理说km" superView:view];
        return view;
    }else{
        return nil;
    }
}

- (void)subBtnsWithIndex:(NSInteger)index title:(NSString *)title superView:(UIView *)superView{
    UIButton *btn = [[UIButton alloc]init];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    btn.titleLabel.font = [UIFont systemFontOfSize:14.0f];
    btn.tag = index;
    [superView addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(superView).offset(index * (self.view.frame.size.width / 4.0));
        make.top.bottom.equalTo(superView);
        make.width.mas_equalTo(@(self.view.frame.size.width / 4.0));
    }];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"Bitmap"]];
        [cell addSubview:imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            [make edges];
        }];
        return cell;
    }else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
        cell.textLabel.text = @"aksjdk";
        return cell;
    }
}

- (void)click{
    
}

@end
