//
//  VTMsgHeadBtnView.m
//  VovoToo
//
//  Created by Never on 2018/4/10.
//  Copyright © 2018年 VovoToo. All rights reserved.
//

#import "VTMsgHeadBtnView.h"

@implementation VTMsgHeadBtnView

- (instancetype)initWithFrame:(CGRect)frame buttonArr:(NSArray *)btnArray{
    
    if (self = [super initWithFrame:frame]) {
//        [self initUI:btnArray];
    }
    return self;
}


- (void)layoutSubviewsWithFrame:(CGRect)frame titleArr:(NSArray *)titleArr imageArr:(NSArray *)imageArr{
    
    UIView *bottomView = [[UIView alloc] initWithFrame:self.bounds];
    bottomView.userInteractionEnabled = YES;
    bottomView.backgroundColor = [UIColor colorWithHexString:@"cccccc"];
    
    for (NSInteger i = 0 ; i<titleArr.count; i++) {
        
        UIButton *bottomBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        bottomBtn.frame = CGRectMake(i*(frame.size.width/titleArr.count), 0, frame.size.width/titleArr.count, 80);
//        bottomBtn.titleLabel.font = Font54;
        [bottomBtn setTitleColor:[UIColor colorWithHexString:@"666666"] forState:UIControlStateNormal];
        [bottomBtn setTitle:titleArr[i] forState:UIControlStateNormal];
        if (imageArr.count>0) {
            [bottomBtn setImage:[UIImage imageNamed:imageArr[i]] forState:UIControlStateNormal];
//            bottomBtn.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, WidthFor1080*20);
        }
        [bottomBtn setTintColor:[UIColor colorWithHexString:@"666666"]];
        bottomBtn.backgroundColor = [UIColor whiteColor];
//        [self.BottomButtonArr addObject:bottomBtn];
        bottomBtn.tag = 100+i;
        [bottomBtn addTarget:self action:@selector(headButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        [bottomView addSubview:bottomBtn];
    }
    [self addSubview:bottomView];
}

- (void)headButtonAction:(UIButton *)sender{

    
}

@end
