//
//  ILIttleUtility.m
//  iLiTTLE
//
//  Created by 刘雷 on 15/5/24.
//  Copyright (c) 2015年 yc. All rights reserved.
//

#import "ILIttleUtility.h"
#import <MessageUI/MessageUI.h>


@implementation ILIttleUtility

static ILIttleUtility * iLittleUtility;

+ (ILIttleUtility *)shareUtility{
    if (iLittleUtility == nil) {
        iLittleUtility = [[ILIttleUtility alloc]init];
    }
    return iLittleUtility;
}

/*!  * @brief 屏幕比例，默认是按320*480 为1倍 */
+(CGFloat)sceneScale
{
    
    
    return [[UIScreen mainScreen] bounds].size.width/320.0f;
}

- (void)sendMesageWithMessageBody:(NSString*)string
                         number:(NSString*)number
                         serder:(id)serder
            backGroundImageName:(NSString*)imageName{
    
    _senderController = (UIViewController *)serder;
    
    picker = [[MFMessageComposeViewController alloc] init];
    picker.messageComposeDelegate =self;
    picker.navigationBar.tintColor = [UIColor blackColor];
    picker.view.backgroundColor = [UIColor whiteColor];
    picker.body = string;
    picker.recipients = [NSArray arrayWithObject:number];
    
    if (picker == nil) {
        [self showAlertWithString:@"不能发送消息,请确定是操作系统是否支持."];
        return;
    }

    for (UIView * subview in picker.view.subviews) {
        [subview removeFromSuperview];
    }
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc]
                                                    initWithTarget:self
                                                    action:@selector(keyboardHide:)
                                                    ];
    
    if (imageName.length > 0 && imageName != nil) {
        picker.view.backgroundColor = [UIColor colorWithPatternImage:
                                       [UIImage imageNamed:imageName]];
    }else{
        picker.view.backgroundColor = [UIColor colorWithPatternImage:
                                       [UIImage imageNamed:@"空调品牌对码发送.png"]];//default_image
    }
    
    //设置成NO表示当前控件响应后会传播到其他控件上，默认为YES。
    tapGestureRecognizer.cancelsTouchesInView = NO;
    //将触摸事件添加到当前view
    [picker.view addGestureRecognizer:tapGestureRecognizer];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(dismiss)
                                   ];
    
    //设置成NO表示当前控件响应后会传播到其他控件上，默认为YES。
    tap.cancelsTouchesInView = NO;
    //将触摸事件添加到当前view
    
    
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0,
                                                                           0,
                                                                           CGRectGetWidth(_senderController.view.frame),
                                                                           CGRectGetHeight(_senderController.view.frame))
                               ];
    
    imageView.image = [UIImage imageNamed:imageName];
    
    [picker.view addSubview:imageView];

    
    [_senderController presentViewController:picker animated:NO completion:^{
        
        imageView.userInteractionEnabled = YES;
        [imageView addGestureRecognizer:tap];
        /*
        UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0,
                                                                0,
                                                                CGRectGetWidth(_senderController.view.frame),
                                                                CGRectGetHeight(_senderController.view.frame))
                         ];
        
        [imageView addGestureRecognizer:tap];
        imageView.image = [UIImage imageNamed:imageName];
        
        [picker.view addSubview:imageView];
         */
        
    }];

}

-(void)keyboardHide:(UITapGestureRecognizer*)tap{
    
    picker.body = @"啦啦啦啦";
    picker.view.backgroundColor = [UIColor blueColor];
    picker.recipients = [NSArray arrayWithObject:@"10086"];
}

- (void)dismiss{
    [_senderController dismissViewControllerAnimated:YES completion:nil];
}

- (void)messageComposeViewController:(MFMessageComposeViewController *)controller
                 didFinishWithResult:(MessageComposeResult)result {
    
    //Notifies users about errors associated with the interface
    
    switch (result) {
            
        case MessageComposeResultCancelled:
            
            //if (DEBUG)NSLog(@"Result: canceled");
            
            break;
            
        case MessageComposeResultSent:
            
            //if (DEBUG)NSLog(@"Result: Sent");
            
            break;
            
        case MessageComposeResultFailed:
            
           // if (DEBUG)NSLog(@"Result: Failed");
            
            break;
            
        default:
            break;
    }
    
    [_senderController dismissViewControllerAnimated:YES completion:nil];
}

- (void)showAlertWithString:(NSString*)string{
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"提示"
                                                    message:string
                                                   delegate:self
                                           cancelButtonTitle:@"确定"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
