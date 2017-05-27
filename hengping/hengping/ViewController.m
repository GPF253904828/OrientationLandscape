//
//  ViewController.m
//  hengping
//
//  Created by GPF on 2017/5/26.
//  Copyright © 2017年 Damon. All rights reserved.
//

#import "ViewController.h"
#import "NAVViewController.h"
#import "WWWViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(30, 30, 50, 50);
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    button.titleLabel.font = [UIFont systemFontOfSize:13];
    [button setBackgroundColor:[UIColor redColor]];
    [button setTitle:@"click me" forState:UIControlStateNormal];
    [self.view addSubview:button];

    self.view.backgroundColor = [UIColor orangeColor];
}
- (void)buttonClick{
    WWWViewController * vc = [[WWWViewController alloc] init];
    NAVViewController * nav = [[NAVViewController alloc]initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}
- (BOOL)shouldAutorotate {
    return YES;
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskPortrait;
}
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
