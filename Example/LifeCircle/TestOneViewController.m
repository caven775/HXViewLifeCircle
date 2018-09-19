//
//  TestOneViewController.m
//  LifeCircle
//
//  Created by kewen on 2018/9/19.
//  Copyright © 2018年 TAL. All rights reserved.
//

#import "TestOneViewController.h"
#import "HXTestViewTwo.h"

@interface TestOneViewController ()

@end

@implementation TestOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    HXTestViewTwo *two = [[HXTestViewTwo alloc] initWithFrame:CGRectMake(0, 10, 20, 20)];
    [self.view addSubview:two];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
