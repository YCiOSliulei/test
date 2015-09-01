//
//  BaseViewController.m
//  iLiTTLE
//
//  Created by 刘雷 on 15/5/31.
//  Copyright (c) 2015年 yc. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        UIButton * bgview = [[UIButton alloc]initWithFrame:self.view.bounds];
        bgview.backgroundColor = [UIColor clearColor];
        [bgview addTarget:self action:@selector(returnKeyBoardAction) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:bgview];
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)returnKeyBoardAction{
    NSLog(@"Click !!!");
}

- (void)goBackAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
