//
//  UIView+MZViewPush.m
//  警告弹窗
//
//  Created by shishi on 16/6/27.
//  Copyright © 2016年 keyto168. All rights reserved.
//

#import "UIView+MZViewPush.h"

@implementation UIView (MZViewPush)

- (void)pushViewController:(nullable UIViewController *)viewController animated:(BOOL)animated {
    
    
    [[self getPresentingController].navigationController pushViewController:viewController animated:animated];
}

- (nullable UIViewController *)popViewControllerAnimated:(BOOL)animated {

    
    return [[self getPresentingController].navigationController popViewControllerAnimated:animated];
}

- ( NSArray<__kindof UIViewController *> *)popToRootViewControllerAnimated:(BOOL)animated {
    return [[self getPresentingController].navigationController popToRootViewControllerAnimated:animated];
}

- (void)presentViewController:(nullable UIViewController *)viewControllerToPresent animated: (BOOL)flag {
    
    [[self getPresentingController] presentViewController:viewControllerToPresent animated:flag completion:nil];
}

- (void)dismissViewControllerAnimated: (BOOL)flag {
    
    [[self getPresentingController] dismissViewControllerAnimated:flag completion:nil];

}


- (UIViewController *_Nullable)getPresentingController {
    
    UIResponder *next = [self nextResponder];
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = [next nextResponder];
    } while (next != nil);
    
    for (UIView* next = [self superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}


@end
