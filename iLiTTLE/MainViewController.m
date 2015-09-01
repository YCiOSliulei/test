//
//  ViewController.m
//  iLiTTLE
//
//  Created by 刘雷 on 15/4/26.
//  Copyright (c) 2015年 yc. All rights reserved.
//

#import "MainViewController.h"
#import "originSettingView.h"
#import "securityControlView.h"
#import "airConditioningView.h"
#import "moreView.h"


@interface MainViewController ()

@property (strong, nonatomic) UIImageView *bgImage;

@property (strong, nonatomic) UIButton *button1;
@property (strong, nonatomic) UIButton *button2;
@property (strong, nonatomic) UIButton *button3;
@property (strong, nonatomic) UIButton *button4;

@end

@implementation MainViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _bgImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, IOS7_OR_LATER ? 20: 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        _bgImage.userInteractionEnabled = YES;
        
        _bgImage.image = [UIImage imageNamed:@"ilittle1.png"];
        
        [self.view addSubview:_bgImage];
        
        CGFloat height1 = (SCREEN_HEIGHT > 480) ? 160 : 130;
        
        CGFloat height2 = (SCREEN_HEIGHT > 480) ? 270 : 240;
        
        
        _button1 = [[UIButton alloc]initWithFrame:CGRectMake(54 * kSceneScale,
                                                             height1* kSceneScale,
                                                             106* kSceneScale,
                                                             100* kSceneScale)];

        [_button1 addTarget:self action:@selector(button100Action) forControlEvents:UIControlEventTouchUpInside];
        [_button1 setImage:[UIImage imageNamed:@"ilittle1_k1"] forState:UIControlStateNormal];
        [_button1 setImage:[UIImage imageNamed:@"ilittle1_k1"] forState:UIControlStateHighlighted];
        [_bgImage addSubview:_button1];
        
        _button2 = [[UIButton alloc]initWithFrame:CGRectMake(170* kSceneScale,
                                                             height1*kSceneScale,
                                                             106*kSceneScale,
                                                             100*kSceneScale)];
        [_button2 setImage:[UIImage imageNamed:@"ilittle1_k2"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"ilittle1_k2"] forState:UIControlStateHighlighted];
        [_button2 addTarget:self action:@selector(button2Action) forControlEvents:UIControlEventTouchUpInside];
        [_bgImage addSubview:_button2];
        
        _button3 = [[UIButton alloc]initWithFrame:CGRectMake(54 * kSceneScale,
                                                             height2* kSceneScale,
                                                             106* kSceneScale,
                                                             100* kSceneScale)];
        [_button3 setImage:[UIImage imageNamed:@"ilittle1_k3"] forState:UIControlStateNormal];
        [_button3 setImage:[UIImage imageNamed:@"ilittle1_k3"] forState:UIControlStateHighlighted];
        [_button3 addTarget:self action:@selector(button3Action) forControlEvents:UIControlEventTouchUpInside];
        [_bgImage addSubview:_button3];
        
        
        _button4 = [[UIButton alloc]initWithFrame:CGRectMake(170 * kSceneScale,
                                                             height2 * kSceneScale,
                                                             106 * kSceneScale,
                                                             100 * kSceneScale)];
        [_button4 setImage:[UIImage imageNamed:@"ilittle1_k4"] forState:UIControlStateNormal];
        [_button4 setImage:[UIImage imageNamed:@"ilittle1_k4"] forState:UIControlStateHighlighted];
        [_button4 addTarget:self action:@selector(button4Action) forControlEvents:UIControlEventTouchUpInside];
        [_bgImage addSubview:_button4];
        
        
    }
    return self;
}

- (void)button100Action{
    originSettingView * origin = [[originSettingView alloc]init];
    
    [self presentViewController:origin animated:YES completion:^{
        
    }];
}

- (void)button2Action{
    securityControlView * origin = [[securityControlView alloc]init];
    
    [self presentViewController:origin animated:YES completion:^{
        
    }];
    
}
- (void)button3Action{
    
    airConditioningView * origin = [[airConditioningView alloc]init];
    
    [self presentViewController:origin animated:YES completion:^{
        
    }];
    
}
- (void)button4Action{
    
    moreView * origin = [[moreView alloc]init];
    
    [self presentViewController:origin animated:YES completion:^{
        
    }];
}




- (void)viewDidLoad {
    
    [super viewDidLoad];

}



@end
