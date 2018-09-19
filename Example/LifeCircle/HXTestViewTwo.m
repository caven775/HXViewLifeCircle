//
//  HXTestViewTwo.m
//  LifeCircle
//
//  Created by kewen on 2018/9/19.
//  Copyright © 2018年 TAL. All rights reserved.
//

#import "HXTestViewTwo.h"

@implementation HXTestViewTwo

- (void)hx_lifeCircleViewWillAppear:(BOOL)animated controller:(UIViewController *)controller
{
    NSLog(@"HXTestViewTwo willAppear == %@", controller);
}

- (void)hx_lifeCircleViewDidAppear:(BOOL)animated controller:(UIViewController *)controller
{
    NSLog(@"HXTestViewTwo didAppear == %@", controller);
}

- (void)hx_lifeCircleViewWillDisappear:(BOOL)animated controller:(UIViewController *)controller
{
    NSLog(@"HXTestViewTwo willDisappear == %@", controller);
}

- (void)hx_lifeCircleViewDidDisappear:(BOOL)animated controller:(UIViewController *)controller
{
    NSLog(@"HXTestViewTwo didDisappear == %@", controller);
}

@end
