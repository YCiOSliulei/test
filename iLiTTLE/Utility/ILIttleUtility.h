//
//  ILIttleUtility.h
//  iLiTTLE
//
//  Created by 刘雷 on 15/5/24.
//  Copyright (c) 2015年 yc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MessageUI/MessageUI.h>


@interface ILIttleUtility : NSObject<MFMessageComposeViewControllerDelegate>
{
    MFMessageComposeViewController *picker;
}

@property (nonatomic, strong)UIViewController * senderController;

+ (ILIttleUtility *)shareUtility;

+(CGFloat)sceneScale;

- (void)sendMesageWithMessageBody:(NSString*)string
                           number:(NSString*)number
                           serder:(id)serder
              backGroundImageName:(NSString*)imageName;

- (void)showAlertWithString:(NSString*)string;

@end
