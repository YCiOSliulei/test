//
//  phoneNumberSettingView.h
//  iLiTTLE
//
//  Created by 刘雷 on 15/5/12.
//  Copyright (c) 2015年 yc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"


@interface phoneNumberSettingView : BaseViewController

@property (weak, nonatomic) IBOutlet UITextField *countryNumberTextfield;
@property (weak, nonatomic) IBOutlet UITextField *phoneSortNumberTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneNUmberTextField;


- (IBAction)goBack:(id)sender;

@end
