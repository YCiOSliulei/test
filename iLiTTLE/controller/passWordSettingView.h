//
//  passWordSettingView.h
//  iLiTTLE
//
//  Created by 刘雷 on 15/5/12.
//  Copyright (c) 2015年 yc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"


@interface passWordSettingView : BaseViewController

@property (weak, nonatomic) IBOutlet UIImageView *backgroundView;
@property (weak, nonatomic) IBOutlet UITextField *originPassWordTextfield;
@property (weak, nonatomic) IBOutlet UITextField *knewPassWordTextField;
@property (weak, nonatomic) IBOutlet UITextField *SIMNumberTextField;

- (IBAction)sendMesage:(id)sender;

- (IBAction)goBack:(id)sender;

@end
