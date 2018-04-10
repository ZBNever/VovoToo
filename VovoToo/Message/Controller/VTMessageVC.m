//
//  VTMessageVC.m
//  VovoToo
//
//  Created by Never on 2018/4/9.
//  Copyright © 2018年 VovoToo. All rights reserved.
//

#import "VTMessageVC.h"

@interface VTMessageVC ()

@end

@implementation VTMessageVC
///继承UITableViewController必须使用这种初始化方法才有用
- (instancetype)initWithStyle:(UITableViewStyle)style{
    if (self = [super initWithStyle:style]) {
        [BaseMethod controller:self Title:@"消息" tabBarItemImage:@"message_gray" tabBarItemSelectedImage:@"message"];
    }
    return self;
}
///继承UITableViewController此方法不会被调用
/**
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        [BaseMethod controller:self Title:@"消息" tabBarItemImage:@"message_gray" tabBarItemSelectedImage:@"message"];
        
    }
    
    return self;
    
}
*/

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initNavigationBar];
    
}
- (void)initNavigationBar{
    self.navigationController.navigationBar.backgroundColor = [UIColor themeColor];
    self.navigationController.navigationBar.barTintColor = [UIColor themeColor];
    //取消导航栏半透明效果
    self.navigationController.navigationBar.translucent = NO;

}
- (void)initheadBtnUI{
    
    
}


@end
