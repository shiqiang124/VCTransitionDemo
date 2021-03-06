//
//  ModalViewController.h
//  VCTransitionDemo
//
//  Created by 王 巍 on 13-10-13.
//  Copyright (c) 2013年 王 巍. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CENavigationController.h"
#import "CEViewController.h"

@class ModalViewController;
@protocol ModalViewControllerDelegate <NSObject>

-(void) modalViewControllerDidClickedDismissButton:(ModalViewController *)viewController;

@end

@interface ModalViewController : CEViewController
@property (nonatomic, weak) id<ModalViewControllerDelegate> delegate;
@end
