//
//  VTBaseViewController.h
//  VovoToo
//
//  Created by Never on 2017/10/31.
//  Copyright © 2017年 Never. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VTBaseViewController : UIViewController

- (void)controller:(UIViewController *)controller Title:(NSString *)title tabBarItemImage:(NSString *)image tabBarItemSelectedImage:(NSString *)selectedImage;

- (void)backBtnAction;

@end
