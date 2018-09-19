//
//  HXViewLifeCircleProtocol.h
//  LifeCircle
//
//  Created by kewen on 2018/9/19.
//  Copyright © 2018年 TAL. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 在UIView 中实现监听controller的生命周期
 使用方法：在需要监听的View中遵守，并实现该协议
 */
@protocol HXViewLifeCircleProtocol <NSObject>

@optional;

- (void)hx_lifeCircleViewWillAppear:(BOOL)animated controller:(UIViewController *)controller;
- (void)hx_lifeCircleViewDidAppear:(BOOL)animated controller:(UIViewController *)controller;
- (void)hx_lifeCircleViewWillDisappear:(BOOL)animated controller:(UIViewController *)controller;
- (void)hx_lifeCircleViewDidDisappear:(BOOL)animated controller:(UIViewController *)controller;

@end
