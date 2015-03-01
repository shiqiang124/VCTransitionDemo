//
//  PanNavigationViewController.m
//  VCTransitionDemo
//
//  Created by sq on 15/3/1.
//  Copyright (c) 2015年 王 巍. All rights reserved.
//

#import "PanNavigationViewController.h"

@interface PanNavigationViewController ()

@end

@implementation PanNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(80.0, 310.0, 160.0, 40.0);
    [button2 setTitle:@"push" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(buttonClicked2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
}

-(void) buttonClicked2:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
