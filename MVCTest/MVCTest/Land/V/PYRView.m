//
//  PYRView.m
//  MVCTest
//
//  Created by 蒲悦蓉 on 2019/9/19.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "PYRView.h"

@implementation PYRView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor colorWithRed:0.74f green:0.92f blue:0.50f alpha:1.00f];
    _nameTextFiled = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 175, 50)];
    _nameTextFiled.placeholder = @"输入用户名";
    _psdTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 300, 175, 50)];
    _psdTextField.placeholder = @"输入密码";
    
    
    UIButton *landButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [landButton setTitle:@"登陆" forState:UIControlStateNormal];
    [landButton addTarget:self action:@selector(pressLand:) forControlEvents:UIControlEventTouchUpInside];
    [landButton setFrame:CGRectMake(120, 500, 75, 30)];
    
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [registerButton addTarget:self action:@selector(pressRegister:) forControlEvents:UIControlEventTouchUpInside];
    [registerButton setFrame:CGRectMake(225, 500, 75, 30)];
    
    [self addSubview:_nameTextFiled];
    [self addSubview:_psdTextField];
    [self addSubview:landButton];
    [self addSubview:registerButton];
    
    return self;
}

- (void)pressLand:(UIButton *)sender {
    if ([_delegate respondsToSelector:@selector(clickButton:)]) {
        [_delegate clickButton:sender];
    }
}

- (void)pressRegister:(UIButton*)registerButton {
    if ([_delegate respondsToSelector:@selector(pressToRegister:)]) {
        [_delegate pressToRegister:registerButton];
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
