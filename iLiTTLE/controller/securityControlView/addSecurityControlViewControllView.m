//
//  PassWordSettingViewController.m
//  iLiTTLE
//
//  Created by tusm on 15/6/16.
//  Copyright (c) 2015年 yc. All rights reserved.
//

#import "addSecurityControlViewControllView.h"

@interface addSecurityControlViewControllView ()<UITextFieldDelegate,UIGestureRecognizerDelegate>
{
    
    UITextField *tf_tel;
    UITextField *tf_tel1;

    
}
@end

@implementation addSecurityControlViewControllView

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
                                                                         backButton.bottom+50,
                                                                         209* kSceneScale,
                                                                         58* kSceneScale)];
        
        [srollView addSubview:_button1];
        [_button1 setImage:[UIImage imageNamed:@"2－4"] forState:UIControlStateNormal];
        _button1.userInteractionEnabled = NO;
        
        tf_tel = [[UITextField alloc]initWithFrame:CGRectMake(75 * kSceneScale,
                                                              _button1.top,
                                                              190* kSceneScale,
                                                              58* kSceneScale)];
        tf_tel.backgroundColor =[UIColor redColor];
        tf_tel.borderStyle = UITextBorderStyleNone;
        tf_tel.placeholder = @"请输入报警器序号";
        tf_tel.font =[UIFont systemFontOfSize:17.0];
        tf_tel.delegate = self;
        tf_tel.textAlignment =1;

        [srollView addSubview:tf_tel];
        

        
        
        UIButton *  _button3 = [[UIButton alloc]initWithFrame:CGRectMake(63 * kSceneScale,
                                                                         _button1.bottom+20,
                                                                         209* kSceneScale,
                                                                         58* kSceneScale)];
        
        [srollView addSubview:_button3];
        [_button3 setImage:[UIImage imageNamed:@"2－4"] forState:UIControlStateNormal];
        _button3.userInteractionEnabled = NO;
        
        tf_tel1 = [[UITextField alloc]initWithFrame:CGRectMake(75 * kSceneScale,
                                                              _button3.top,
                                                              190* kSceneScale,
                                                              58* kSceneScale)];
        tf_tel1.backgroundColor =[UIColor redColor];
        tf_tel1.borderStyle = UITextBorderStyleNone;
        tf_tel1.placeholder = @"输入报警器SN码";
        tf_tel1.font =[UIFont systemFontOfSize:17.0];
        tf_tel1.delegate = self;
        tf_tel1.textAlignment =1;

        [srollView addSubview:tf_tel1];
        
        
        
        UIButton *    _button4 = [[UIButton alloc]initWithFrame:CGRectMake(63 * kSceneScale,
                                                                           _button3.bottom+20,
                                                                           209 * kSceneScale,
                                                                           58 * kSceneScale)];
        [srollView addSubview:_button4];
        [_button4 setImage:[UIImage imageNamed:@"anfang_k5.png"] forState:UIControlStateNormal];
        [_button4 setImage:[UIImage imageNamed:@"more_k5.png"] forState:UIControlStateHighlighted];
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
    
    if ([tf_tel isFirstResponder]) {
        btnFrame   = [tf_tel.superview convertRect:tf_tel.frame toView:[UIApplication sharedApplication].keyWindow];
    }
    if ([tf_tel1 isFirstResponder]) {
        btnFrame   = [tf_tel1.superview convertRect:tf_tel1.frame toView:[UIApplication sharedApplication].keyWindow];
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
    [tf_tel resignFirstResponder];
    [tf_tel1 resignFirstResponder];

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

- (void)button1Action
{
    
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
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
