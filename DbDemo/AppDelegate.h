//
//  AppDelegate.h
//  DbDemo
//
//  Created by iOS Developer on 17/03/15.
//  Copyright (c) 2015 Regius. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "Sqlite.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UINavigationController * navController;
    ViewController * mainView;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) Sqlite *dbObject;

@end

