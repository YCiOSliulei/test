//
//  WTLGlobalMethod.m
//  YCWorktile
//
//  Created by John on 14-9-25.
//  Copyright (c) 2014年 WTL. All rights reserved.
//

#import "WTLGlobalMethod.h"


void statusBarWhite (void){
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

void statusBarBlack (void){
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
}

