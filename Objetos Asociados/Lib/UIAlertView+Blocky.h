//
//  UIAlertView+Blocky.h
//  Tests
//
//  Created by Sendoa Portuondo on 28/01/13.
//  Copyright (c) 2013 Qbikode Solutions, S.L. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SPOAlertViewDismissBlock)(NSInteger buttonIndex);

@interface UIAlertView (Blocky)

@property (nonatomic, copy) SPOAlertViewDismissBlock spo_dismissBlock;

+ (UIAlertView*)alertViewWithTitle:(NSString*)titulo message:(NSString*)mensaje dismissBlock:(SPOAlertViewDismissBlock)dismissBlock;

@end
