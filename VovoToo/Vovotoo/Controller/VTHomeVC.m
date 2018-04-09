//
//  VTHomeVC.m
//  VovoToo
//
//  Created by Never on 2018/4/9.
//  Copyright © 2018年 VovoToo. All rights reserved.
//

#import "VTHomeVC.h"

@interface VTHomeVC ()

@end

@implementation VTHomeVC
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        [self controller:self Title:@"窝窝头" tabBarItemImage:@"home_gray" tabBarItemSelectedImage:@"home"];
        
    }
    
    return self;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
}


@end
