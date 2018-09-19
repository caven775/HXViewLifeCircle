//
//  UIView+HXViewLifeCircle.h
//  Teacher_iOS
//
//  Created by kewen on 2018/9/19.
//  Copyright © 2018年 DaHai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HXViewLifeCircle)

- (void)hx_swizzlingViewWillAppear:(BOOL)animated controller:(UIViewController *)controller;
- (void)hx_swizzlingViewDidAppear:(BOOL)animated controller:(UIViewController *)controller;
- (void)hx_swizzlingViewWillDisappear:(BOOL)animated controller:(UIViewController *)controller;
- (void)hx_swizzlingViewDidDisappear:(BOOL)animated controller:(UIViewController *)controller;

@end
