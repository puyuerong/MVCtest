//
//  RegisterView.m
//  MVCTest
//
//  Created by 蒲悦蓉 on 2019/9/19.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "RegisterView.h"

@implementation RegisterView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor colorWithRed:0.74f green:0.92f blue:0.50f alpha:1.00f];
    _nameTextFiled = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 175, 50)];
    _nameTextFiled.placeholder = @"输入用户名";
    _psdTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 300, 175, 50)];
    _psdTextField.placeholder = @"输入密码";
    
    
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [registerButton setTitle:@"确认注册" forState:UIControlStateNormal];
    [registerButton addTarget:self action:@selector(pressRegister:) forControlEvents:UIControlEventTouchUpInside];
    [registerButton setFrame:CGRectMake(150, 500, 75, 30)];
    
    [self addSubview:_nameTextFiled];
    [self addSubview:_psdTextField];
    [self addSubview:registerButton];
    
    
    
    return self;
}

- (void)pressRegister:(UIButton*)sender {
    if ([_delegate respondsToSelector:@selector(clickButton:)]) {
        [_delegate clickButton:sender];
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
