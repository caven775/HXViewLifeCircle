//
//  ViewController.m
//  LifeCircle
//
//  Created by kewen on 2018/9/19.
//  Copyright © 2018年 TAL. All rights reserved.
//

#import "ViewController.h"
#import "TestOneViewController.h"
#import "HXTestViewOne.h"
#import "HXTestViewThree.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HXTestViewOne *oneView = [[HXTestViewOne alloc] initWithFrame:CGRectMake(0, 20, 30, 30)];
    [self.view addSubview:oneView];
    
    HXTestViewThree *threeView = [[HXTestViewThree alloc] initWithFrame:CGRectMake(100, 100, 20, 20)];
    [self.view addSubview:threeView];
    
//    HXTestViewOne *twoView = [[HXTestViewOne alloc] initWithFrame:CGRectMake(80, 20, 30, 30)];
//    [self.view addSubview:twoView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    TestOneViewController *one = [[TestOneViewController alloc] init];
    [self presentViewController:one animated:YES completion:nil];
}


@end
