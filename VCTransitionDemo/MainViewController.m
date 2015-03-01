//
//  MainViewController.m
//  VCTransitionDemo
//
//  Created by 王 巍 on 13-10-12.
//  Copyright (c) 2013年 王 巍. All rights reserved.
//

#import "MainViewController.h"
#import "ModalViewController.h"
#import "BouncePresentAnimation.h"
#import "NormalDismissAnimation.h"
#import "SwipeUpInteractiveTransition.h"
#import "CENavigationController.h"
#import "AppDelegate.h"

@interface MainViewController ()<ModalViewControllerDelegate>
@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [button setTitle:@"Click me" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
 
    
}

-(void) buttonClicked:(id)sender
{
    
    ModalViewController *mvc =  [[ModalViewController alloc] init];
    
    //mvc.transitioningDelegate = mvc;
    mvc.delegate = self;
    
    CENavigationController *nav1 = [[CENavigationController alloc] initWithRootViewController:mvc];
    nav1.delegate = nav1;
    nav1.transitioningDelegate = mvc;
    
    //[self.transitionController wireToViewController:mvc];
    [self presentViewController:nav1 animated:YES completion:nil];
     
    
    
    //[self.navigationController pushViewController:mvc animated:YES];
}


-(void)modalViewControllerDidClickedDismissButton:(ModalViewController *)viewController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
