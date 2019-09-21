//
//  Modle.h
//  MVCTest
//
//  Created by 蒲悦蓉 on 2019/9/18.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Modle : NSObject
@property NSString *nameStr;
@property NSString *psdStr;
- (void)checkName:(NSString*)name password:(NSString*)psd;
@end

NS_ASSUME_NONNULL_END
