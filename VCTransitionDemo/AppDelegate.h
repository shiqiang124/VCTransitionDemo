//
//  AppDelegate.h
//  VCTransitionDemo
//
//  Created by 王 巍 on 13-10-12.
//  Copyright (c) 2013年 王 巍. All rights reserved.
//

#import <UIKit/UIKit.h>


#define AppDelegateAccessor ((AppDelegate *)[[UIApplication sharedApplication] delegate])

@class CEReversibleAnimationController, CEBaseInteractionController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


@property (strong, nonatomic) CEReversibleAnimationController *navigationControllerAnimationController;
@property (strong, nonatomic) CEBaseInteractionController *navigationControllerInteractionController;



@property (strong, nonatomic) CEReversibleAnimationController *dismissControllerAnimationController;
@property (strong, nonatomic) CEBaseInteractionController *dismissControllerInteractionController;
@end
