//
//  passWordSettingView.m
//  iLiTTLE
//
//  Created by 刘雷 on 15/5/12.
//  Copyright (c) 2015年 yc. All rights reserved.
//

#import "passWordSettingView.h"

@interface passWordSettingView ()

@end

@implementation passWordSettingView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setTranslatesAutoresizingMaskIntoConstraints:NO];
    
}

- (void)returnKeyBoardAction{
    
    if ([_originPassWordTextfield isFirstResponder]) {
        
        [_originPassWordTextfield resignFirstResponder];
    }
    else if ([_knewPassWordTextField isFirstResponder]){
        
        [_knewPassWordTextField resignFirstResponder];
    }
    
    else if ([_SIMNumberTextField isFirstResponder]){
        
        [_SIMNumberTextField resignFirstResponder];
    }
}


- (IBAction)sendMesage:(id)sender {

}

- (IBAction)goBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
