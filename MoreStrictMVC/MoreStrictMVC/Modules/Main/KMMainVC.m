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
#import "KMTweetsVC.h"

@interface KMMainVC ()




@end

@implementation KMMainVC


- (void)viewDidLoad {
    [super viewDidLoad];
    
    KMMeVC *mevc = [[KMMeVC alloc] init];
    KMHomeVC *homevc = [[KMHomeVC alloc] init];
    KMTweetsVC *tweetsvc = [[KMTweetsVC alloc] init];
    
    UINavigationController *me = [[UINavigationController alloc] initWithRootViewController:mevc];
    UINavigationController *tweets = [[UINavigationController alloc] initWithRootViewController:tweetsvc];
    UINavigationController *home = [[UINavigationController alloc] initWithRootViewController:homevc];
    
    
    self.viewControllers = @[home, tweets, me];
    
    NSArray *titles = @[@"综合", @"动弹",// @"", @"发现",
                        @"我的"];
    NSArray *images = @[@"tabbar-news", @"tabbar-tweet", // @"", @"tabbar-discover",
                        @"tabbar-me"];
    
    [self.tabBar.items enumerateObjectsUsingBlock:^(UITabBarItem * _Nonnull anitem, NSUInteger idx, BOOL * _Nonnull stop) {
        [anitem setTitle:titles[idx]];
        anitem.image = [[UIImage imageNamed:images[idx]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        anitem.selectedImage = [[UIImage imageNamed:[images[idx] stringByAppendingString:@"-selected"]]  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    
}


@end
