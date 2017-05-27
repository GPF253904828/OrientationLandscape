//
//  EEEViewController.m
//  hengping
//
//  Created by GPF on 2017/5/26.
//  Copyright © 2017年 Damon. All rights reserved.
//

#import "EEEViewController.h"
#import "RRRViewController.h"

@interface EEEViewController ()

@end

@implementation EEEViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(50, 50, 100, 100);
    [button addTarget:self action:@selector(aaaaaaaaaaaaaaa) forControlEvents:UIControlEventTouchUpInside];
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    [button setBackgroundColor:[UIColor blueColor]];
    [button setTitle:@"back" forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(50, 250, 100, 100);
    [button2 addTarget:self action:@selector(aaaaaaaaaaaaaaa2) forControlEvents:UIControlEventTouchUpInside];
    button2.titleLabel.font = [UIFont systemFontOfSize:14];
    [button2 setBackgroundColor:[UIColor blueColor]];
    [button2 setTitle:@"push RRR" forState:UIControlStateNormal];
    [self.view addSubview:button2];
    
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = [NSString stringWithFormat:@"%@-横屏",NSStringFromClass(self.class)];
}

- (void)aaaaaaaaaaaaaaa{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)aaaaaaaaaaaaaaa2{
    RRRViewController *vc = [[RRRViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (BOOL)shouldAutorotate {
    return YES;
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAll;
}
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationLandscapeRight | UIInterfaceOrientationPortrait |
    UIInterfaceOrientationPortraitUpsideDown  | UIInterfaceOrientationLandscapeLeft;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
