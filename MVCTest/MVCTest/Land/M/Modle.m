//
//  Modle.m
//  MVCTest
//
//  Created by 蒲悦蓉 on 2019/9/18.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "Modle.h"

@interface Modle ()

@end

@implementation Modle

- (void)checkName:(NSString *)name password:(NSString *)psd {
    if (([name isEqualToString:@"123"] && [psd isEqualToString:@"123"]) || ([name isEqualToString:_nameStr] && [psd isEqualToString:_psdStr])){
        [[NSNotificationCenter defaultCenter] postNotificationName:@"right" object:self];
    } else {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"False" object:self];
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
