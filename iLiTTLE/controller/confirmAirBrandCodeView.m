//
//  confirmAirBrandCodeView.m
//  iLiTTLE
//
//  Created by 刘雷 on 15/5/25.
//  Copyright (c) 2015年 yc. All rights reserved.
//  

#import "confirmAirBrandCodeView.h"

@interface confirmAirBrandCodeView ()

@end

@implementation confirmAirBrandCodeView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setTranslatesAutoresizingMaskIntoConstraints:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)returnKeyBoardAction{
    
    if ([_airBrandNumberTextField isFirstResponder]) {
        
        [_airBrandNumberTextField resignFirstResponder];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)goBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
