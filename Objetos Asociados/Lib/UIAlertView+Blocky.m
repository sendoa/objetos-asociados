//
//  UIAlertView+Blocky.m
//  Tests
//
//  Created by Sendoa Portuondo on 28/01/13.
//  Copyright (c) 2013 Qbikode Solutions, S.L. All rights reserved.
//

#import "UIAlertView+Blocky.h"
#import <objc/runtime.h>

static const char kDismissBlockKey;

@implementation UIAlertView (Blocky)

+ (UIAlertView*)alertViewWithTitle:(NSString *)titulo message:(NSString *)mensaje dismissBlock:(SPOAlertViewDismissBlock)dismissBlock
{
	UIAlertView* alertView = [[UIAlertView alloc] init];
	alertView.title = titulo;
	alertView.message = mensaje;
	alertView.spo_dismissBlock = dismissBlock;
	
	return alertView;
}

- (void)setSpo_dismissBlock:(SPOAlertViewDismissBlock)spo_dismissBlock
{
	self.delegate = self;
	
	objc_setAssociatedObject(self, &kDismissBlockKey, spo_dismissBlock, OBJC_ASSOCIATION_COPY);
}

- (SPOAlertViewDismissBlock)spo_dismissBlock
{
	return objc_getAssociatedObject(self, &kDismissBlockKey);
}

#pragma mark - UIAlertViewDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
	self.spo_dismissBlock(buttonIndex);
}
@end
