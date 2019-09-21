//
//  ViewController.m
//  MVCTest
//
//  Created by 蒲悦蓉 on 2019/9/21.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "ViewController.h"
#import "Controller.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)viewDidAppear:(BOOL)animated {
    Controller *VC = [[Controller alloc] init];
    [self presentViewController:VC animated:YES completion:nil];
}


@end
