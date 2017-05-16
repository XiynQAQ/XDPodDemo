//
//  ViewController.m
//  XDPodDemo
//
//  Created by DingJia on 2017/4/24.
//  Copyright © 2017年 席亚楠. All rights reserved.
//

#import "ViewController.h"
#import "SelleButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //NSLog(@"这是个demo");
    SelleButton * btn = [SelleButton SelleButton];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 100, 80, 100);
    [btn setTitle:@"张三" forState:UIControlStateNormal];
    //[btn setBackgroundImage:[UIImage imageNamed:@"2bj"] forState:UIControlStateHighlighted];
    [self.view addSubview:btn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
