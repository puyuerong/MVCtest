//
//  PYRViewController.m
//  MVCTest
//
//  Created by 蒲悦蓉 on 2019/9/19.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "PYRViewController.h"
#import "ViewController.h"
@interface PYRViewController ()
@property RegisterView *registerView;
@property RegisterModel *registerModel;
@end

@implementation PYRViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _registerView = [[RegisterView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_registerView];
    _registerModel = [[RegisterModel alloc] init];
    _registerView.delegate = self;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(success) name:@"success" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fail) name:@"fail" object:nil];
    
    
    // Do any additional setup after loading the view.
    
}

- (void)pressToRegister:(UIButton *)registerButton {
    [_registerModel checkName:_registerView.nameTextFiled.text passsword:_registerView.psdTextField.text];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_registerView.nameTextFiled resignFirstResponder];
    [_registerView.psdTextField resignFirstResponder];
}

- (void)clickButton:(UIButton *)sender {
    [_registerModel checkName:_registerView.nameTextFiled.text passsword:_registerView.psdTextField.text];
}

- (void)success {
    [_pageDelegate pushName:_registerView.nameTextFiled.text password:_registerView.psdTextField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)fail {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"输入有误" message:@"用户名和密码长度不少于八" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:sureAction];
    [self presentViewController:alertController animated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
