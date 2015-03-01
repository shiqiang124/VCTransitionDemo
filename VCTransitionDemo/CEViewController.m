//
//  CEViewController.m
//  VCTransitionDemo
//
//  Created by sq on 15/3/1.
//  Copyright (c) 2015年 王 巍. All rights reserved.
//

#import "CEViewController.h"
#import "AppDelegate.h"
#import "CEPanDismissInteractionController.h"
#import "CEReversibleAnimationController.h"

@interface CEViewController ()

@end

@implementation CEViewController

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    if (AppDelegateAccessor.dismissControllerInteractionController) {
        [AppDelegateAccessor.dismissControllerInteractionController wireToViewController:presented forOperation:CEInteractionOperationDismiss];
    }
    return nil;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return AppDelegateAccessor.dismissControllerAnimationController;
}

-(id<UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id<UIViewControllerAnimatedTransitioning>)animator {
    return AppDelegateAccessor.dismissControllerInteractionController && AppDelegateAccessor.dismissControllerInteractionController.interactionInProgress ? AppDelegateAccessor.dismissControllerInteractionController : nil;
}



@end
