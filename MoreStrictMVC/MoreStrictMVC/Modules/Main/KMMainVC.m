//
//  KMMainVC.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/17/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMMainVC.h"

#import "KMHomeVC.h"
#import "KMMeVC.h"


@interface KMMainVC ()




@end

@implementation KMMainVC


- (void)viewDidLoad {
    [super viewDidLoad];
    
    KMMeVC *mevc = [[KMMeVC alloc] init];
    KMHomeVC *homevc = [[KMHomeVC alloc] init];
    
    UINavigationController *me = [[UINavigationController alloc] initWithRootViewController:mevc];
    UINavigationController *home = [[UINavigationController alloc] initWithRootViewController:homevc];
    
    
    self.viewControllers = @[home, me];
    
    [[self.tabBar.items objectAtIndex:1] setTitle:@"Me"];
    [[self.tabBar.items objectAtIndex:0] setTitle:@"Home"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    
}


@end
