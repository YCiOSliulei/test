//
//  moreView.m
//  iLiTTLE
//
//  Created by 刘雷 on 15/4/26.
//  Copyright (c) 2015年 yc. All rights reserved.
//

#import "moreView.h"
#import "more1ViewControllView.h"
#import "phoneNumberSettingViewController.h"
#import "ConfirmAirBrandCodeViewController.h"

@interface moreView ()

@property (strong, nonatomic) UIImageView *bgImage;
@property (strong, nonatomic) UIButton    *backButton;
@property (strong, nonatomic) UIButton    *button1;
@property (strong, nonatomic) UIButton    *button2;
@property (strong, nonatomic) UIButton    *button3;

@property (strong, nonatomic) UIImageView *bottomImage;

@end

@implementation moreView

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        
        _bgImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, IOS7_OR_LATER ? 20: 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        _bgImage.image = [UIImage imageNamed:@"星空底"];
        _bgImage.userInteractionEnabled = YES;
        
        [self.view addSubview:_bgImage];
        
        
        UIScrollView * srollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0,
                                                                                 0,
                                                                                 SCREEN_WIDTH,
                                                                                 SCREEN_HEIGHT)];
        
        srollView.backgroundColor = [UIColor clearColor];
        
        srollView.contentSize = CGSizeMake(SCREEN_WIDTH *kSceneScale,
                                           568* kSceneScale);
        srollView.scrollEnabled = YES;
        
        [_bgImage addSubview:srollView];
        
        
        UIButton * backButton = [[UIButton alloc]initWithFrame:CGRectMake(30 * kSceneScale,
                                                                          34 * kSceneScale,
                                                                          110* kSceneScale,
                                                                          50 * kSceneScale)];
        [srollView addSubview:backButton];
        [backButton setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
        [backButton setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateHighlighted];
        [backButton addTarget:self action:@selector(goBackAction) forControlEvents:UIControlEventTouchUpInside];
        
        
        _button1 = [[UIButton alloc]initWithFrame:CGRectMake(63 * kSceneScale,
                                                             152 * kSceneScale,
                                                             209* kSceneScale,
                                                             58* kSceneScale)];
        [srollView addSubview:_button1];
        [_button1 setImage:[UIImage imageNamed:@"more_k1"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"more_k1"] forState:UIControlStateHighlighted];
        [_button1 addTarget:self action:@selector(button1Action) forControlEvents:UIControlEventTouchUpInside];
        
        _button2 = [[UIButton alloc]initWithFrame:CGRectMake(63 * kSceneScale,
                                                             223 * kSceneScale,
                                                             209* kSceneScale,
                                                             58* kSceneScale)];
        [srollView addSubview:_button2];
        [_button2 setImage:[UIImage imageNamed:@"chushi_k2"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"chushi_k2"] forState:UIControlStateHighlighted];
        [_button2 addTarget:self action:@selector(button2Action) forControlEvents:UIControlEventTouchUpInside];
        
        _button3 = [[UIButton alloc]initWithFrame:CGRectMake(63 * kSceneScale,
                                                             294 * kSceneScale,
                                                             209* kSceneScale,
                                                             58* kSceneScale)];
        [srollView addSubview:_button3];
        [_button3 setImage:[UIImage imageNamed:@"chushi_k3"] forState:UIControlStateNormal];
        [_button3 setImage:[UIImage imageNamed:@"chushi_k3"] forState:UIControlStateHighlighted];
        [_button3 addTarget:self action:@selector(button3Action) forControlEvents:UIControlEventTouchUpInside];
        
        _bottomImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"小白字"]];
        _bottomImage.frame = CGRectMake(87 * kSceneScale,
                                        476* kSceneScale,
                                        155* kSceneScale,
                                        44 * kSceneScale);
        
        [srollView addSubview:_bottomImage];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //statusBarWhite ();
}

- (void)button1Action{
    more1ViewControllView *vc = [[more1ViewControllView alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
    

}

- (void)button2Action{
    phoneNumberSettingViewController *vc = [[phoneNumberSettingViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (void)button3Action
{
    ConfirmAirBrandCodeViewController *vc = [[ConfirmAirBrandCodeViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
    
}


- (void)goBackAction{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
