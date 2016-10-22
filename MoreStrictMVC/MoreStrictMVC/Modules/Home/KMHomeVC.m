//
//  KMHomeVC.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/17/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMHomeVC.h"

#import "KMInfomationVC.h"
#import "KMBlogVC.h"
#import "KMQuestionVC.h"
#import "KMActivityVC.h"

#import "UIColor+Util.h"


@interface KMHomeVC ()

@property (nonatomic, strong) NSArray *items;

@property (nonatomic, strong) KMInfomationVC *infoVC;
@property (nonatomic, strong) KMBlogVC *blogVC;
@property (nonatomic, strong) KMQuestionVC *questionVC;
@property (nonatomic, strong) KMActivityVC *activityVC;


@end

@implementation KMHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.items = @[@"资讯", @"博客", @"问答", @"活动"];
    
    self.title = @"综合";
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.cellSpacing = 10;
    self.cellWidth = 70;
    self.cellEdging = 10;
    
    self.adjustStatusBarHeight = YES;
    self.navigationController.navigationBarHidden = NO;
    self.barStyle = TYPagerBarStyleNoneView;
    
    self.contentView.backgroundColor = [UIColor titleBarColor];
    self.selectedTextColor = [UIColor newSectionButtonSelectedColor];
    
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

- (UIViewController*)pagerController:(TYPagerController *)pagerController controllerForIndex:(NSInteger)index {
    switch (index) {
        case 0:{
            if (!_infoVC) {
                _infoVC = [[KMInfomationVC alloc] init];
            }
            return _infoVC;
        }
            break;
        case 1: {
            if (!_blogVC) {
                _blogVC = [[KMBlogVC alloc] init];
            }
            return _blogVC;
        }
            break;
        case 2: {
            if (!_questionVC) {
                _questionVC = [[KMQuestionVC alloc] init];
            }
            return _questionVC;
        }
            break;
        case 3: {
            if (!_activityVC) {
                _activityVC = [[KMActivityVC alloc] init];
            }
            return _activityVC;
        }
            break;
    }
    return nil;
}

- (void)pagerController:(TYTabPagerController *)pagerController configreCell:(UICollectionViewCell *)cell forItemTitle:(NSString *)title atIndexPath:(NSIndexPath *)indexPath {
    [super pagerController:pagerController configreCell:cell forItemTitle:title atIndexPath:indexPath];
}

@end
