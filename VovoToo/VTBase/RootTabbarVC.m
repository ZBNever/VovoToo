//
//  RootTabbarVC.m
//  VovoToo
//
//  Created by Never on 2018/4/9.
//  Copyright © 2018年 VovoToo. All rights reserved.
//

#import "RootTabbarVC.h"

#import "VTHomeVC.h"
#import "VTFindVC.h"
#import "VTTakeVideoVC.h"
#import "VTMineVC.h"
#import "VTMessageVC.h"


@interface RootTabbarVC ()

@end

@implementation RootTabbarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self initVC];
}

- (void)initVC{
    
//    UITabBarController *tabbarVC = self.tabBarController;
    VTHomeVC *homeVC = [[VTHomeVC alloc] init];
    UINavigationController *homeVav = [[UINavigationController alloc] initWithRootViewController:homeVC];
    
    VTFindVC *findVC = [[VTFindVC alloc] init];
    UINavigationController *findNav = [[UINavigationController alloc] initWithRootViewController:findVC];
    
    VTTakeVideoVC *takeVideoVC = [[VTTakeVideoVC alloc] init];
    
    VTMessageVC *messageVC = [[VTMessageVC alloc] init];
    UINavigationController *messageNav = [[UINavigationController alloc] initWithRootViewController:messageVC];
    
    VTMineVC *mineVC = [[VTMineVC alloc] init];
     UINavigationController *mineNav = [[UINavigationController alloc] initWithRootViewController:mineVC];
    
    self.viewControllers = @[homeVav,findNav,takeVideoVC,messageNav,mineNav];
    

    
}
@end
