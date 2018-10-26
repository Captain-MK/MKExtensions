//
//  UIView+MZViewPush.h
//  警告弹窗
//
//  Created by shishi on 16/6/27.
//  Copyright © 2016年 keyto168. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MZViewPush)

- (void)pushViewController:(nullable UIViewController *)viewController animated:(BOOL)animated;

- (nullable UIViewController *)popViewControllerAnimated:(BOOL)animated;

- (nullable NSArray<__kindof UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated;

- (void)presentViewController:(nullable UIViewController *)viewControllerToPresent animated: (BOOL)flag;

- (void)dismissViewControllerAnimated: (BOOL)flag;

- (UIViewController *_Nullable)getPresentingController;
@end
