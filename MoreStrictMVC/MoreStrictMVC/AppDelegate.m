//
//  AppDelegate.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/17/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "AppDelegate.h"

#import "UIColor+Util.h"
#import "UIView+Util.h"


@interface AppDelegate ()

@property (nonatomic, strong) KMMainVC *mainVC;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    NSDictionary *navbarTitleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    [[UINavigationBar appearance] setTitleTextAttributes:navbarTitleTextAttributes];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    [[UITabBar appearance] setTintColor:[UIColor colorWithHex:0x24CF5F]];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor colorWithHex:0x24cf5f]} forState:UIControlStateSelected];
    
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor navigationbarColor]];
    [[UITabBar appearance] setBarTintColor:[UIColor titleBarColor]];
    
    [UISearchBar appearance].tintColor = [UIColor colorWithHex:0x15A230];
    [[UITextField appearanceWhenContainedIn:[UISearchBar class], nil] setCornerRadius:14.0];
    [[UITextField appearanceWhenContainedIn:[UISearchBar class], nil] setAlpha:0.6];
    
    [[UITextField appearance] setTintColor:[UIColor nameColor]];
    [[UITextView appearance]  setTintColor:[UIColor nameColor]];
    
    
    _window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    _mainVC = [[KMMainVC alloc] init];
    self.window.rootViewController =_mainVC;
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}


@end
