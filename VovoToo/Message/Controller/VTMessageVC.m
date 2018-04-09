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

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        [self controller:self Title:@"消息" tabBarItemImage:@"message_gray" tabBarItemSelectedImage:@"message"];
        
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.navigationController.navigationBar.backgroundColor = [UIColor themeColor];
//    [self.navigationController.navigationBar setBackgroundImage:[self imageWithColor:[UIColor themeColor]] forBarMetrics:UIBarMetricsDefault];

}

/**
 *  @brief  根据颜色生成纯色图片
 *
 *  @param color 颜色
 *
 *  @return 纯色图片
 */
- (UIImage *)imageWithColor:(UIColor *)color {
    
    CGRect rect = CGRectMake(0.0f, 1.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}


@end
