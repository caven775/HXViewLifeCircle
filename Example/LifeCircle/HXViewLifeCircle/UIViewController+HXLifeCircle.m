//
//  UIViewController+HXLifeCircle.m
//  Teacher_iOS
//
//  Created by kewen on 2018/9/19.
//  Copyright © 2018年 DaHai. All rights reserved.
//

#import "UIViewController+HXLifeCircle.h"
#import "UIView+HXViewLifeCircle.h"
#import <objc/runtime.h>

@implementation UIViewController (HXLifeCircle)

+ (void)hx_swizzlingOriginalSEL:(SEL)originalSEL
                         newSEL:(SEL)newSEL
{
    Class class = [self class];
    Method originalMethod = class_getInstanceMethod(class, originalSEL);
    Method newMethod = class_getInstanceMethod(class, newSEL);
    BOOL didAddMethod = class_addMethod(class, originalSEL,
                                        method_getImplementation(newMethod),
                                        method_getTypeEncoding(newMethod));
    if (didAddMethod) {
        class_replaceMethod(class, newSEL,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, newMethod);
    }
}

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self hx_swizzlingOriginalSEL:@selector(viewWillAppear:)
                               newSEL:@selector(hx_swizzlingViewWillAppear:)];
        [self hx_swizzlingOriginalSEL:@selector(viewDidAppear:)
                               newSEL:@selector(hx_swizzlingViewDidAppear:)];
        [self hx_swizzlingOriginalSEL:@selector(viewWillDisappear:)
                               newSEL:@selector(hx_swizzlingViewWillDisappear:)];
        [self hx_swizzlingOriginalSEL:@selector(viewDidDisappear:)
                               newSEL:@selector(hx_swizzlingViewDidDisappear:)];
    });
}

- (void)hx_swizzlingViewWillAppear:(BOOL)animated
{
    [self hx_swizzlingViewWillAppear:animated];
    [self.view hx_swizzlingViewWillAppear:animated controller:self];
}

- (void)hx_swizzlingViewDidAppear:(BOOL)animated
{
    [self hx_swizzlingViewDidAppear:animated];
    [self.view hx_swizzlingViewDidAppear:animated controller:self];
}

- (void)hx_swizzlingViewWillDisappear:(BOOL)animated
{
    [self hx_swizzlingViewWillDisappear:animated];
    [self.view hx_swizzlingViewWillDisappear:animated controller:self];
}

- (void)hx_swizzlingViewDidDisappear:(BOOL)animated
{
    [self hx_swizzlingViewDidDisappear:animated];
    [self.view hx_swizzlingViewDidDisappear:animated controller:self];
}

@end
