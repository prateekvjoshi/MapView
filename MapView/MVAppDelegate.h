//
//  MVAppDelegate.h
//  MapView
//
//  Created by Prateek Joshi on 7/21/13.
//  Copyright (c) 2013 Prateek Joshi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MVViewController;

@interface MVAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MVViewController *viewController;

@end
