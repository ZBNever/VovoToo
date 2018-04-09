//
//  VTFindVC.m
//  VovoToo
//
//  Created by Never on 2018/4/9.
//  Copyright © 2018年 VovoToo. All rights reserved.
//

#import "VTFindVC.h"
#import "VTCommendVC.h"

@interface VTFindVC ()

@end

@implementation VTFindVC

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {

        [BaseMethod controller:self Title:@"发现" tabBarItemImage:@"find_gray" tabBarItemSelectedImage:@"find"];

    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self initNavigationBar];
    [self initUI];
}

- (void)initNavigationBar{
    self.navigationController.navigationBar.backgroundColor = [UIColor themeColor];
    self.navigationController.navigationBar.barTintColor = [UIColor themeColor];
    //取消导航栏半透明效果
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.title = @"";
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(10, 0, 260, 44)];
    searchBar.barStyle = UIBarStyleDefault;
    searchBar.placeholder = @"搜索产品、窝头";
    [self.navigationController.navigationBar addSubview:searchBar];
}

- (void)initUI{
    // 添加所有子控制器
    [self setUpAllViewController];
    
    [self setUpTitleEffect:^(UIColor *__autoreleasing *titleScrollViewColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIFont *__autoreleasing *titleFont, CGFloat *titleHeight, CGFloat *titleWidth) {
        *norColor = [UIColor lightGrayColor];
        *selColor = [UIColor themeColor];
        *titleWidth = [UIScreen mainScreen].bounds.size.width / 5;
    }];
    
    // 标题渐变
    // *推荐方式(设置标题渐变)
    [self setUpTitleGradient:^(YZTitleColorGradientStyle *titleColorGradientStyle, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor) {
        
    }];
    
    [self setUpUnderLineEffect:^(BOOL *isUnderLineDelayScroll, CGFloat *underLineH, UIColor *__autoreleasing *underLineColor,BOOL *isUnderLineEqualTitleWidth) {
        //        *isUnderLineDelayScroll = YES;
        *isUnderLineEqualTitleWidth = YES;
        *underLineColor = [UIColor themeColor];
    }];
}
// 添加所有子控制器
- (void)setUpAllViewController
{
    
    // 推荐
    VTCommendVC *wordVc1 = [[VTCommendVC alloc] init];
    wordVc1.title = @"推荐";
    [self addChildViewController:wordVc1];
    
    VTCommendVC *wordVc2 = [[VTCommendVC alloc] init];
    wordVc2.title = @"桂林";
    [self addChildViewController:wordVc2];
    
    VTCommendVC *wordVc3 = [[VTCommendVC alloc] init];
    wordVc3.title = @"社区";
    [self addChildViewController:wordVc3];
    
    VTCommendVC *wordVc4 = [[VTCommendVC alloc] init];
    wordVc4.title = @"兴趣";
    [self addChildViewController:wordVc4];
    
    VTCommendVC *wordVc5 = [[VTCommendVC alloc] init];
    wordVc5.title = @"生活";
    [self addChildViewController:wordVc5];
    
    VTCommendVC *wordVc6 = [[VTCommendVC alloc] init];
    wordVc6.title = @"吃货";
    [self addChildViewController:wordVc6];
    
    VTCommendVC *wordVc7 = [[VTCommendVC alloc] init];
    wordVc7.title = @"旅游";
    [self addChildViewController:wordVc7];
//    // iPhone
//    ZBChildViewController *wordVc2 = [[ZBChildViewController alloc] init];
//    wordVc2.title = @"iPhone";
//    wordVc2.type = 2;
//    [self addChildViewController:wordVc2];
//
//    // 安卓
//    ZBChildViewController *wordVc3 = [[ZBChildViewController alloc] init];
//    wordVc3.title = @"安卓";
//    wordVc3.type = 3;
//    [self addChildViewController:wordVc3];
//
//    //平板
//    ZBChildViewController *wordVc4 = [[ZBChildViewController alloc] init];
//    wordVc4.title = @"平板";
//    wordVc4.type =  4;
//    [self addChildViewController:wordVc4];
//
//    // 笔记本
//    ZBChildViewController *wordVc5 = [[ZBChildViewController alloc] init];
//    wordVc5.title = @"笔记本";
//    wordVc5.type = 5;
//    [self addChildViewController:wordVc5];
//
//    // 手表
//    ZBChildViewController *wordVc6 = [[ZBChildViewController alloc] init];
//    wordVc6.title = @"手表";
//    wordVc6.type = 6;
//    [self addChildViewController:wordVc6];
    
}
@end
