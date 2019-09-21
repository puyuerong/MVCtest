//
//  RegisterModel.m
//  MVCTest
//
//  Created by 蒲悦蓉 on 2019/9/19.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "RegisterModel.h"

@interface RegisterModel ()

@end

@implementation RegisterModel


- (void)checkName:(NSString *)name passsword:(NSString *)psd {
    if (([name length] >= 8) && ([psd length] >= 8)) {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"success" object:nil];
    } else {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"fail" object:nil];
    }
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
