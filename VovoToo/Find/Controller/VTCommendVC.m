//
//  VTCommendVC.m
//  VovoToo
//
//  Created by Never on 2018/4/9.
//  Copyright © 2018年 VovoToo. All rights reserved.
//

#import "VTCommendVC.h"
#import <SDCycleScrollView.h>
#import <MJRefresh.h>
#import <ZBMacroDefine/MacroDefineHeader.h>

@interface VTCommendVC ()<SDCycleScrollViewDelegate>

@property (nonatomic, strong) SDCycleScrollView *cycleScrollView;

@property (nonatomic, strong) NSMutableArray *bannerImgArr;

@property (nonatomic, strong) MJRefreshNormalHeader *header;

@end

@implementation VTCommendVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView.tableHeaderView = self.cycleScrollView;
    [self example03];
}

#pragma mark UITableView + 下拉刷新 隐藏时间
- (void)example03
{
    // 设置回调（一旦进入刷新状态，就调用target的action，也就是调用self的loadNewData方法）
    MJRefreshNormalHeader *header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadUrlData)];
    
    // 设置自动切换透明度(在导航栏下面自动隐藏)
    header.automaticallyChangeAlpha = YES;
    
    // 隐藏时间
    header.lastUpdatedTimeLabel.hidden = YES;
    
    // 马上进入刷新状态
    [header beginRefreshing];
    self.header = header;
    // 设置header
    self.tableView.mj_header = header;
}

- (SDCycleScrollView *)cycleScrollView{
    
    if (!_cycleScrollView) {
        //轮播图
        _cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, KSCREEN_WIDTH, KSCREEN_WIDTH*(120/375.0)) delegate:self placeholderImage:nil];
//        _cycleScrollView.imageURLStringsGroup = self.bannerImgArr;
        _cycleScrollView.localizationImageNamesGroup = self.bannerImgArr;
        _cycleScrollView.autoScrollTimeInterval = 4.0;
        _cycleScrollView.pageControlStyle = SDCycleScrollViewPageContolStyleClassic;
        _cycleScrollView.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    }
    return _cycleScrollView;
}

- (NSMutableArray *)bannerImgArr{
    
    if (!_bannerImgArr) {
        _bannerImgArr = [NSMutableArray arrayWithObjects:[UIImage imageNamed:@"5.jpg"],[UIImage imageNamed:@"6.jpg"],[UIImage imageNamed:@"11.jpg"],[UIImage imageNamed:@"12.jpg"], nil];
    }
    return _bannerImgArr;
}

- (void)loadUrlData{
    
    sleep(2);
    
    [self.header endRefreshing];
}

@end
