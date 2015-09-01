//
//  PassWordSettingViewController.m
//  iLiTTLE
//
//  Created by tusm on 15/6/16.
//  Copyright (c) 2015年 yc. All rights reserved.
//

#import "PassWordSettingViewController.h"

@interface PassWordSettingViewController ()<UITextFieldDelegate,UIGestureRecognizerDelegate>
{
    
    UITextField *tf_originPassWord;
    UITextField *tf_newPassWord;

    UITextField *tf_tel;

}
@end

@implementation PassWordSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (instancetype)init
{
    self = [super init];
    
    if (self) {
   UIImageView * _bgImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, IOS7_OR_LATER ? 20: 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
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
        
        UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(returnKeyBoardAction)];
        tap.numberOfTapsRequired=1;

        [srollView addGestureRecognizer:tap];

    
    
    UIButton * backButton = [[UIButton alloc]initWithFrame:CGRectMake(30 * kSceneScale,
                                                                      34 * kSceneScale,
                                                                      110* kSceneScale,
                                                                      50 * kSceneScale)];
    [srollView addSubview:backButton];
    [backButton setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    [backButton setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateHighlighted];
    [backButton addTarget:self action:@selector(goBackAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
  UIButton *  _button1 = [[UIButton alloc]initWithFrame:CGRectMake(63 * kSceneScale,
                                                         152 * kSceneScale,
                                                         209* kSceneScale,
                                                         58* kSceneScale)];
    [srollView addSubview:_button1];
    [_button1 setImage:[UIImage imageNamed:@"password_1"] forState:UIControlStateNormal];
    _button1.userInteractionEnabled = NO;
        
        
        tf_originPassWord = [[UITextField alloc]initWithFrame:CGRectMake(75 * kSceneScale,
                                                                        152 * kSceneScale,
                                                                        65* kSceneScale,
                                                                         58* kSceneScale)];
        tf_originPassWord.backgroundColor =[UIColor clearColor];
        tf_originPassWord.borderStyle = UITextBorderStyleNone;
        tf_originPassWord.font =[UIFont systemFontOfSize:17.0];
        tf_originPassWord.delegate = self;

        [srollView addSubview:tf_originPassWord];
    
  UIButton *   _button2 = [[UIButton alloc]initWithFrame:CGRectMake(63 * kSceneScale,
                                                         223 * kSceneScale,
                                                         209* kSceneScale,
                                                         58* kSceneScale)];
    [srollView addSubview:_button2];
    [_button2 setImage:[UIImage imageNamed:@"password_2"] forState:UIControlStateNormal];
    _button2.userInteractionEnabled = NO;

        
        
        tf_newPassWord = [[UITextField alloc]initWithFrame:CGRectMake(75 * kSceneScale,
                                                                         223 * kSceneScale,
                                                                         65* kSceneScale,
                                                                         58* kSceneScale)];
        tf_newPassWord.backgroundColor =[UIColor clearColor];
        tf_newPassWord.borderStyle = UITextBorderStyleNone;
        tf_newPassWord.font =[UIFont systemFontOfSize:17.0];
        tf_newPassWord.delegate = self;

        

        [srollView addSubview:tf_newPassWord];
    
   UIButton *  _button3 = [[UIButton alloc]initWithFrame:CGRectMake(63 * kSceneScale,
                                                         294 * kSceneScale,
                                                         209* kSceneScale,
                                                         58* kSceneScale)];
        
        [srollView addSubview:_button3];
        [_button3 setImage:[UIImage imageNamed:@"password_3"] forState:UIControlStateNormal];
        _button3.userInteractionEnabled = NO;
        
        tf_tel = [[UITextField alloc]initWithFrame:CGRectMake(75 * kSceneScale,
                                                                         294 * kSceneScale,
                                                                         190* kSceneScale,
                                                                         58* kSceneScale)];
        tf_tel.backgroundColor =[UIColor clearColor];
        tf_tel.borderStyle = UITextBorderStyleNone;
        tf_tel.placeholder = @"输入SIM卡手机号码";
        tf_tel.font =[UIFont systemFontOfSize:17.0];
        tf_tel.delegate = self;

        [srollView addSubview:tf_tel];


    
 UIButton *    _button4 = [[UIButton alloc]initWithFrame:CGRectMake(63 * kSceneScale,
                                                         370 * kSceneScale,
                                                         209 * kSceneScale,
                                                         58 * kSceneScale)];
    [srollView addSubview:_button4];
    [_button4 setImage:[UIImage imageNamed:@"password_4"] forState:UIControlStateNormal];
    [_button4 setImage:[UIImage imageNamed:@"password_4"] forState:UIControlStateHighlighted];
    [_button4 addTarget:self action:@selector(button4Action) forControlEvents:UIControlEventTouchUpInside];
    
  UIImageView *   _bottomImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"小白字"]];
    _bottomImage.frame = CGRectMake(87 * kSceneScale,
                                    476* kSceneScale,
                                    155* kSceneScale,
                                    44 * kSceneScale);
    
         [srollView addSubview:_bottomImage];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
        
}



    return self;
}

- (CGRect)keyboardFrameFromNoti:(NSNotification *)noti
{
    NSDictionary *userInfo = [noti userInfo];
    NSValue *keyboardValue = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardFrame = [keyboardValue CGRectValue];
    return keyboardFrame;
}
- (void)keyboardWillShow:(NSNotification *)noti
{
    [UIView beginAnimations:@"up" context:nil];
    [UIView setAnimationDuration:.3];
    //        [UIView setAnimationDelegate:self];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    
    CGRect keyFame = [self keyboardFrameFromNoti:noti];
    CGRect btnFrame ;
    if ([tf_originPassWord isFirstResponder]) {
        btnFrame   = [tf_originPassWord.superview convertRect:tf_originPassWord.frame toView:[UIApplication sharedApplication].keyWindow];
    }
    if ([tf_newPassWord isFirstResponder]) {
        btnFrame   = [tf_newPassWord.superview convertRect:tf_newPassWord.frame toView:[UIApplication sharedApplication].keyWindow];
    }
    
    if ([tf_tel isFirstResponder]) {
        btnFrame   = [tf_tel.superview convertRect:tf_tel.frame toView:[UIApplication sharedApplication].keyWindow];
    }
    
    float viewTop = -20- (keyFame.size.height-(SCREEN_HEIGHT -  CGRectGetMaxY(btnFrame)));
    if (viewTop >0) {
        viewTop = 0;
    }
    
    self.view.top = viewTop;
    [UIView commitAnimations];

}


- (void)returnKeyBoardAction
{
    [tf_originPassWord resignFirstResponder];
    [tf_newPassWord resignFirstResponder];
    [tf_tel resignFirstResponder];
    
}

- (void)keyboardWillHide:(id)sender
{
    [UIView beginAnimations:@"up" context:nil];
    [UIView setAnimationDuration:.3];
    //        [UIView setAnimationDelegate:self];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    self.view.top = 0;
    [UIView commitAnimations];
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return  [textField resignFirstResponder];
}

- (void)button4Action{
    [[ILIttleUtility shareUtility]sendMesageWithMessageBody:@"10086"
                                                     number:@"10086"
                                                     serder:self
                                        backGroundImageName:@"密码设置发送.png"];
}


- (void)goBackAction{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
