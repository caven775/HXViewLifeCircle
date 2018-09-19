//
//  HXTestViewOne.m
//  LifeCircle
//
//  Created by kewen on 2018/9/19.
//  Copyright © 2018年 TAL. All rights reserved.
//

#import "HXTestViewOne.h"

@implementation HXTestViewOne

- (void)hx_lifeCircleViewWillAppear:(BOOL)animated controller:(UIViewController *)controller
{
    NSLog(@"HXTestViewOne willAppear == %@", controller);
}

- (void)hx_lifeCircleViewDidAppear:(BOOL)animated controller:(UIViewController *)controller
{
    NSLog(@"HXTestViewOne didAppear == %@", controller);
}

- (void)hx_lifeCircleViewWillDisappear:(BOOL)animated controller:(UIViewController *)controller
{
    NSLog(@"HXTestViewOne willDisappear == %@", controller);
}

- (void)hx_lifeCircleViewDidDisappear:(BOOL)animated controller:(UIViewController *)controller
{
    NSLog(@"HXTestViewOne didDisappear == %@", controller);
}

@end
