//
//  Controller.h
//  MVCTest
//
//  Created by 蒲悦蓉 on 2019/9/18.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PYRView.h"
#import "PYRViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface Controller : UIViewController
//@property (nonatomic, strong) UIButton *registerButton;
<ViewDelegate, PYRViewControllerDelegate>
@end

NS_ASSUME_NONNULL_END
