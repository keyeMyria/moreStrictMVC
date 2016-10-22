//
//  KMTweetsVC.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMTweetsVC.h"

#import "KMTweetVC.h"

#import "UIColor+Util.h"

@interface KMTweetsVC ()

@property (nonatomic, strong) NSArray *items;

@end

@implementation KMTweetsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"动弹";
    self.items = @[@"最新动弹", @"热门动弹", @"我的动弹"];

    self.cellSpacing = 15;
    CGFloat w = ([UIScreen mainScreen].bounds.size.width - (self.items.count - 1) * self.cellSpacing )/self.items.count;
    self.cellWidth = w;
    self.cellEdging = 10;
    
    self.adjustStatusBarHeight = YES;
    self.navigationController.navigationBarHidden = NO;
    self.barStyle = TYPagerBarStyleNoneView;
    
    self.contentView.backgroundColor = [UIColor titleBarColor];
    self.selectedTextColor = [UIColor newSectionButtonSelectedColor];
    self.normalTextColor = [UIColor colorWithHex:0x909090];
    
    self.collectionViewBarColor = [UIColor titleBarColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch
                                                                                           target:self
                                                                                           action:@selector(pushSearchViewController)];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


#pragma mark button action
- (void)pushSearchViewController {
    
}

- (NSInteger)numberOfControllersInPagerController {
    return self.items.count;
}

- (NSString*)pagerController:(TYPagerController *)pagerController titleForIndex:(NSInteger)index {
    return self.items[index];
}

- (UIViewController*)pagerController:(TYPagerController *)pagerController controllerForIndex:(NSInteger)index{
    NewTweetsType type = index + NewTweetsTypeAllTweets;
    KMTweetVC *tweetVc = [[KMTweetVC alloc] initTweetListWithType:type];
    return tweetVc;
}

- (void)pagerController:(TYTabPagerController *)pagerController configreCell:(UICollectionViewCell *)cell forItemTitle:(NSString *)title atIndexPath:(NSIndexPath *)indexPath {
    [super pagerController:pagerController configreCell:cell forItemTitle:title atIndexPath:indexPath];
}



@end
