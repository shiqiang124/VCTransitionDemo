//
//  CEDismissAnimationController.m
//  VCTransitionDemo
//
//  Created by sq on 15/3/1.
//  Copyright (c) 2015年 王 巍. All rights reserved.
//

#import "CEDismissAnimationController.h"

@implementation CEDismissAnimationController


- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext fromVC:(UIViewController *)fromVC toVC:(UIViewController *)toVC fromView:(UIView *)fromView toView:(UIView *)toView {
    
    self.duration = .3;
    
    
    // 2. Set init frame for fromVC
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    CGRect initFrame = [transitionContext initialFrameForViewController:fromVC];
    CGRect finalFrame = CGRectOffset(initFrame, 0, screenBounds.size.height);
    
    //NSLog(@"finalFrame:%@",NSStringFromCGRect(finalFrame));
    
    // 3. Add target view to the container, and move it to back.
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    [containerView sendSubviewToBack:toVC.view];
    
    // 4. Do animate now
    NSTimeInterval duration = [self transitionDuration:transitionContext];
    [UIView animateWithDuration:duration animations:^{
        //NSLog(@"animate...");
        fromVC.view.frame = finalFrame;
    } completion:^(BOOL finished) {
        //NSLog(@"animate...end");
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
    }];
    
}


@end
