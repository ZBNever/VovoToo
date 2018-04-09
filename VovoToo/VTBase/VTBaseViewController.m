//
//  EWBaseViewController.m
//  ECO
//
//  Created by Never on 2017/10/31.
//  Copyright © 2017年 Never. All rights reserved.
//

#import "VTBaseViewController.h"

@interface VTBaseViewController ()

@end

@implementation VTBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.navigationItem setHidesBackButton:YES]; 
    //标题颜色
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],NSForegroundColorAttributeName,nil]];
    [self creatLeftItemBtn];
    self.navigationController.navigationBar.backgroundColor = [UIColor themeColor];
    self.navigationController.navigationBar.barTintColor = [UIColor themeColor];
//    //取消导航栏半透明效果
     self.navigationController.navigationBar.translucent = NO;
//    //找出那条线
//    UIImageView *navLineImageView = [self searchNavigationBarUnderLine:self.navigationController.navigationBar];
//    //隐藏线
//    navLineImageView.hidden = YES;
    
    //自定义一个NaVIgationBar
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    //消除阴影
//    self.navigationController.navigationBar.shadowImage = [UIImage imageNamed:@""];
    
}


- (void)controller:(UIViewController *)controller Title:(NSString *)title tabBarItemImage:(NSString *)image tabBarItemSelectedImage:(NSString *)selectedImage
{
    controller.title = title;
    
    controller.tabBarItem.image = [UIImage imageNamed:image];
    // 设置 tabbarItem 选中状态的图片(不被系统默认渲染,显示图像原始颜色)
    UIImage *imageHome = [UIImage imageNamed:selectedImage];
    imageHome = [imageHome imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [controller.tabBarItem setSelectedImage:imageHome];
    // 设置 tabbarItem 未选中状态下的文字颜色(不被系统默认渲染,显示文字自定义颜色)
    [controller.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateNormal];
    // 设置 tabbarItem 选中状态下的文字颜色(不被系统默认渲染,显示文字自定义颜色)
    NSDictionary *dictHome = [NSDictionary dictionaryWithObject:[UIColor blackColor] forKey:NSForegroundColorAttributeName];
    [controller.tabBarItem setTitleTextAttributes:dictHome forState:UIControlStateSelected];
    //未选中
    NSDictionary *un_dictHome = [NSDictionary dictionaryWithObject:[UIColor lightGrayColor] forKey:NSForegroundColorAttributeName];
    [controller.tabBarItem setTitleTextAttributes:un_dictHome forState:UIControlStateNormal];
}

- (void)creatLeftItemBtn{
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.frame = CGRectMake(3, 5, 34, 34);
    [rightBtn setBackgroundImage:[UIImage imageNamed:@"back_arr_btn333"] forState:UIControlStateNormal];
    //    [rightBtn setImage:[UIImage imageNamed:@"cha"] forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(backBtnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.navigationController.navigationBar addSubview:rightBtn];
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
}
- (void)backBtnAction{
    [self.tabBarController dismissViewControllerAnimated:YES completion:nil];
}

- (UIImageView *)searchNavigationBarUnderLine:(UIView *)view
{
    // 查找是否属于UIImageView以及Frame是否小于1.0
    if ([view isKindOfClass:[UIImageView class]] && view.bounds.size.height < 1.0f)
    {
        return (UIImageView *)view;
    }
    // 循环第二层查找
    for (UIView *subView in view.subviews)
    {
        // 递归查找
        UIImageView *imageView = [self searchNavigationBarUnderLine:subView];
        if (imageView) {
            return imageView;
        }
    }
    return nil;
}
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size {
    if (!color || size.width <=0 || size.height <=0) return nil;
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size,NO, 0);
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image =UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}
@end
