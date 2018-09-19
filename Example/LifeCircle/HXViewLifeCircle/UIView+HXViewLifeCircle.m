//
//  UIView+HXViewLifeCircle.m
//  Teacher_iOS
//
//  Created by kewen on 2018/9/19.
//  Copyright © 2018年 DaHai. All rights reserved.
//

#import "UIView+HXViewLifeCircle.h"
#import "HXViewLifeCircleProtocol.h"

@implementation UIView (HXViewLifeCircle)

- (void)hx_swizzlingViewWillAppear:(BOOL)animated controller:(UIViewController *)controller
{
    NSArray <UIView *>*subViews = [controller.view hx_allSubViews];
    for (id subView in subViews) {
        if ([subView conformsToProtocol:@protocol(HXViewLifeCircleProtocol)]) {
            if ([subView respondsToSelector:@selector(hx_lifeCircleViewWillAppear:controller:)]) {
                [subView hx_lifeCircleViewWillAppear:animated controller:controller];
            }
        }
    }
}

- (void)hx_swizzlingViewDidAppear:(BOOL)animated controller:(UIViewController *)controller
{
    NSArray <UIView *>*subViews = [controller.view hx_allSubViews];
    for (id subView in subViews) {
        if ([subView conformsToProtocol:@protocol(HXViewLifeCircleProtocol)]) {
            if ([subView respondsToSelector:@selector(hx_lifeCircleViewDidAppear:controller:)]) {
                [subView hx_lifeCircleViewDidAppear:animated controller:controller];
            }
        }
    }
}

- (void)hx_swizzlingViewWillDisappear:(BOOL)animated controller:(UIViewController *)controller
{
    NSArray <UIView *>*subViews = [controller.view hx_allSubViews];
    for (id subView in subViews) {
        if ([subView conformsToProtocol:@protocol(HXViewLifeCircleProtocol)]) {
            if ([subView respondsToSelector:@selector(hx_lifeCircleViewWillDisappear:controller:)]) {
                [subView hx_lifeCircleViewWillDisappear:animated controller:controller];
            }
        }
    }
}

- (void)hx_swizzlingViewDidDisappear:(BOOL)animated controller:(UIViewController *)controller
{
    NSArray <UIView *>*subViews = [controller.view hx_allSubViews];
    for (id subView in subViews) {
        if ([subView conformsToProtocol:@protocol(HXViewLifeCircleProtocol)]) {
            if ([subView respondsToSelector:@selector(hx_lifeCircleViewDidDisappear:controller:)]) {
                [subView hx_lifeCircleViewDidDisappear:animated controller:controller];
            }
        }
    }
}

- (NSArray *)hx_allSubViews
{
    NSMutableArray * views = [[NSMutableArray alloc] initWithCapacity:0];
    [self hx_ergodicSubView:self views:views];
    return views;
}

- (NSMutableArray *)hx_viewsWithSubView:(UIView *)view views:(NSMutableArray *)views
{
    if (view == nil) {
        return views;
    } else if (!view.subviews.count) {
        [views addObject:view];
    } else {
        [views addObject:view];
        [self hx_ergodicSubView:view views:views];
    }
    return views;
}

- (void)hx_ergodicSubView:(UIView *)view views:(NSMutableArray *)views
{
    for (UIView * subView in view.subviews) {
        [self hx_viewsWithSubView:subView views:views];
    }
}

@end
