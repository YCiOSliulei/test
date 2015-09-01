//
//  airConditioning.m
//  iLiTTLE
//
//  Created by 刘雷 on 15/4/26.
//  Copyright (c) 2015年 yc. All rights reserved.
//

#import "airConditioningView.h"

@interface airConditioningView ()

@property (strong, nonatomic) UIImageView *bgImage;
@property (strong, nonatomic) UIButton    *backButton;
@property (strong, nonatomic) UITextField *textfield;
@property (strong, nonatomic) UIButton    *button2;
@property (strong, nonatomic) UIButton    *button3;
@property (strong, nonatomic) UIButton    *button4;

@property (strong, nonatomic) UIButton    *button5;
@property (strong, nonatomic) UIButton    *button6;
@property (strong, nonatomic) UIButton    *button7;
@property (strong, nonatomic) UIButton    *button8;

@property (strong, nonatomic) UIButton    *button9;
@property (strong, nonatomic) UIButton    *button10;
@property (strong, nonatomic) UIButton    *button11;
@property (strong, nonatomic) UIButton    *button12;


@end

@implementation airConditioningView
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
        
        
        UIButton * backButton = [[UIButton alloc]initWithFrame:CGRectMake(32 * kSceneScale,
                                                                          35 * kSceneScale,
                                                                          106* kSceneScale,
                                                                          48 * kSceneScale)];
        [srollView addSubview:backButton];
        [backButton setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
        [backButton setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateHighlighted];
        [backButton addTarget:self action:@selector(goBackAction) forControlEvents:UIControlEventTouchUpInside];
        
        
        _textfield = [[UITextField alloc]initWithFrame:CGRectMake(66 * kSceneScale,
                                                             120 * kSceneScale,
                                                             100* kSceneScale,
                                                             50* kSceneScale)];
        _textfield.layer.cornerRadius = 5;
        _textfield.layer.masksToBounds = YES;
        _textfield.backgroundColor = [UIColor whiteColor];
        _textfield.placeholder = @"输入温度值";
        _textfield.textAlignment = NSTextAlignmentCenter;
        [_textfield addTarget:self action:@selector(button1Action) forControlEvents:UIControlEventTouchUpInside];
        
        [srollView addSubview:_textfield];

        
        _button2 = [[UIButton alloc]initWithFrame:CGRectMake(170 * kSceneScale,
                                                             120 * kSceneScale,
                                                             100* kSceneScale,
                                                             50* kSceneScale)];
        [srollView addSubview:_button2];
        [_button2 setImage:[UIImage imageNamed:@"air_k1"] forState:UIControlStateNormal];
        [_button2 setImage:[UIImage imageNamed:@"air_k1"] forState:UIControlStateHighlighted];
        [_button2 addTarget:self action:@selector(button2Action) forControlEvents:UIControlEventTouchUpInside];
        
        _button3 = [[UIButton alloc]initWithFrame:CGRectMake(66 * kSceneScale,
                                                            172 * kSceneScale,
                                                             100* kSceneScale,
                                                             50 * kSceneScale)];
        [srollView addSubview:_button3];
        [_button3 setImage:[UIImage imageNamed:@"air_k2"] forState:UIControlStateNormal];
        [_button3 setImage:[UIImage imageNamed:@"air_k2"] forState:UIControlStateHighlighted];
        [_button3 addTarget:self action:@selector(button3Action) forControlEvents:UIControlEventTouchUpInside];
        
        _button4 = [[UIButton alloc]initWithFrame:CGRectMake(170 * kSceneScale,
                                                             172 * kSceneScale,
                                                             100 * kSceneScale,
                                                             50 * kSceneScale)];
        [srollView addSubview:_button4];
        [_button4 setImage:[UIImage imageNamed:@"air_k3"] forState:UIControlStateNormal];
        [_button4 setImage:[UIImage imageNamed:@"air_k3"] forState:UIControlStateHighlighted];
        [_button4 addTarget:self action:@selector(button4Action) forControlEvents:UIControlEventTouchUpInside];
        
        
        
        _button5 = [[UIButton alloc]initWithFrame:CGRectMake(66 * kSceneScale,
                                                             250 * kSceneScale,
                                                             100* kSceneScale,
                                                             50 * kSceneScale)];
        [srollView addSubview:_button5];
        [_button5 setImage:[UIImage imageNamed:@"air_k4"] forState:UIControlStateNormal];
        [_button5 setImage:[UIImage imageNamed:@"air_k4"] forState:UIControlStateHighlighted];
        [_button5 addTarget:self action:@selector(button1Action) forControlEvents:UIControlEventTouchUpInside];
        
        _button6 = [[UIButton alloc]initWithFrame:CGRectMake(170 * kSceneScale,
                                                             250 * kSceneScale,
                                                             100* kSceneScale,
                                                             50* kSceneScale)];
        [srollView addSubview:_button6];
        [_button6 setImage:[UIImage imageNamed:@"air_k5"] forState:UIControlStateNormal];
        [_button6 setImage:[UIImage imageNamed:@"air_k5"] forState:UIControlStateHighlighted];
        [_button6 addTarget:self action:@selector(button2Action) forControlEvents:UIControlEventTouchUpInside];
        
        _button7 = [[UIButton alloc]initWithFrame:CGRectMake(66 * kSceneScale,
                                                             303 * kSceneScale,
                                                             100* kSceneScale,
                                                             50 * kSceneScale)];
        [srollView addSubview:_button7];
        [_button7 setImage:[UIImage imageNamed:@"air_k6"] forState:UIControlStateNormal];
        [_button7 setImage:[UIImage imageNamed:@"air_k6"] forState:UIControlStateHighlighted];
        [_button7 addTarget:self action:@selector(button3Action) forControlEvents:UIControlEventTouchUpInside];
        
        _button8 = [[UIButton alloc]initWithFrame:CGRectMake(170 * kSceneScale,
                                                             303 * kSceneScale,
                                                             100 * kSceneScale,
                                                             50 * kSceneScale)];
        [srollView addSubview:_button8];
        [_button8 setImage:[UIImage imageNamed:@"air_k7"] forState:UIControlStateNormal];
        [_button8 setImage:[UIImage imageNamed:@"air_k7"] forState:UIControlStateHighlighted];
        [_button8 addTarget:self action:@selector(button4Action) forControlEvents:UIControlEventTouchUpInside];
        
        
        
        
        _button9 = [[UIButton alloc]initWithFrame:CGRectMake(66 * kSceneScale,
                                                             380 * kSceneScale,
                                                             100* kSceneScale,
                                                             50* kSceneScale)];
        [srollView addSubview:_button9];
        [_button9 setImage:[UIImage imageNamed:@"air_k8"] forState:UIControlStateNormal];
        [_button9 setImage:[UIImage imageNamed:@"air_k8"] forState:UIControlStateHighlighted];
        [_button9 addTarget:self action:@selector(button1Action) forControlEvents:UIControlEventTouchUpInside];
        
        _button10 = [[UIButton alloc]initWithFrame:CGRectMake(170 * kSceneScale,
                                                             380 * kSceneScale,
                                                             100* kSceneScale,
                                                             50* kSceneScale)];
        [srollView addSubview:_button10];
        [_button10 setImage:[UIImage imageNamed:@"air_k9"] forState:UIControlStateNormal];
        [_button10 setImage:[UIImage imageNamed:@"air_k9"] forState:UIControlStateHighlighted];
        [_button10 addTarget:self action:@selector(button2Action) forControlEvents:UIControlEventTouchUpInside];
        
        _button11 = [[UIButton alloc]initWithFrame:CGRectMake(66 * kSceneScale,
                                                             433 * kSceneScale,
                                                             100* kSceneScale,
                                                             50* kSceneScale)];
        [srollView addSubview:_button11];
        [_button11 setImage:[UIImage imageNamed:@"air_k10"] forState:UIControlStateNormal];
        [_button11 setImage:[UIImage imageNamed:@"air_k10"] forState:UIControlStateHighlighted];
        [_button11 addTarget:self action:@selector(button3Action) forControlEvents:UIControlEventTouchUpInside];
        
        _button12 = [[UIButton alloc]initWithFrame:CGRectMake(170 * kSceneScale,
                                                             433 * kSceneScale,
                                                             100 * kSceneScale,
                                                             50 * kSceneScale)];
        [srollView addSubview:_button12];
        [_button12 setImage:[UIImage imageNamed:@"air_k11"] forState:UIControlStateNormal];
        [_button12 setImage:[UIImage imageNamed:@"air_k11"] forState:UIControlStateHighlighted];
        [_button12 addTarget:self action:@selector(button4Action) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //statusBarWhite ();
}

- (void)button1Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}

- (void)button2Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}

- (void)button3Action{
    
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}

- (void)button4Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}

- (void)button5Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}

- (void)button6Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}

- (void)button7Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}

- (void)button8Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}


- (void)button9Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}

- (void)button10Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}

- (void)button11Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}

- (void)button12Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
    
}

- (void)returnKeyBoardAction{
    NSLog(@"Click !!!");
    if([_textfield isFirstResponder]){
        [_textfield resignFirstResponder];
    }
}

- (void)goBackAction{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
