//
//  PYRViewController.h
//  MVCTest
//
//  Created by 蒲悦蓉 on 2019/9/19.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegisterView.h"
#import "RegisterModel.h"
NS_ASSUME_NONNULL_BEGIN
@protocol PYRViewControllerDelegate <NSObject>

- (void)pushName:(NSString*)name password:(NSString*)psd;

@end

@interface PYRViewController : UIViewController
<RegisterViewDelegate>
@property id<PYRViewControllerDelegate>pageDelegate;
@end

NS_ASSUME_NONNULL_END
