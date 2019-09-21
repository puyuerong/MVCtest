//
//  RegisterView.h
//  MVCTest
//
//  Created by 蒲悦蓉 on 2019/9/19.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol RegisterViewDelegate <NSObject>

- (void)clickButton:(UIButton*)sender;
- (void)pressToRegister:(UIButton*)registerButton;
@end


@interface RegisterView : UIView
@property UITextField *nameTextFiled;
@property UITextField *psdTextField;
@property id<RegisterViewDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
