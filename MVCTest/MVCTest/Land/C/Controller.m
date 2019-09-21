//
//  Controller.m
//  MVCTest
//
//  Created by 蒲悦蓉 on 2019/9/18.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "Controller.h"
#import "PYRView.h"
#import "Modle.h"
#import "ViewController.h"
#import "PYRViewController.h"
#import "PageViewController.h"
@interface Controller ()
@property PYRView *landView;
@property Modle *model;
@end

@implementation Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _landView = [[PYRView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _landView.delegate = self;
    [self.view addSubview:_landView];
    _model = [[Modle alloc] init];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(landSuccessful:) name:@"right" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(landFail:) name:@"False" object:nil];
}
- (void)pushName:(NSString *)name password:(NSString *)psd {
    _landView.nameTextFiled.text = name;
    _landView.psdTextField.text = psd;
    _model.nameStr = name;
    _model.psdStr = psd;
}
- (void)clickButton:(UIButton *)sender {
    [_model checkName:_landView.nameTextFiled.text password:_landView.psdTextField.text];
    NSLog(@"fafrge");
}

- (void)pressToRegister:(UIButton*)registerButton {
    PYRViewController *VC = [[PYRViewController alloc] init];
    VC.pageDelegate = self;
    [self presentViewController:VC animated:YES completion:nil];
}
-(void)landSuccessful:(NSNotification *)notification {
    PageViewController *VC = [[PageViewController alloc] init];
    VC.view.backgroundColor = [UIColor blackColor];
    [self presentViewController:VC animated:NO completion:nil];
}

-(void)landFail:(NSNotification *)notification {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"错误" message:@"账号或密码输入错误" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *suretAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:suretAction];
    [self presentViewController:alertController animated:YES completion:nil];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

//移除通知
- (void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
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
