//
//  UIImage+Titulo.m
//  Tests
//
//  Created by Sendoa Portuondo on 28/01/13.
//  Copyright (c) 2013 Qbikode Solutions, S.L. All rights reserved.
//

#import "UIImage+Titulo.h"
#import <objc/runtime.h>

static const char kTituloKey;

@implementation UIImage (Titulo)

- (void)setTitulo:(NSString *)titulo
{
	objc_setAssociatedObject(self, &kTituloKey, titulo, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString*)titulo
{
	return objc_getAssociatedObject(self, &kTituloKey);
}

@end
