//
//  KMBasePageVC.h
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol KMBasePageVCDataSource;
@protocol KMBasePageVCDelegate;

@interface KMBasePageVC : UIViewController

@property (nonatomic, weak) id<KMBasePageVCDelegate> m_delegate;
@property (nonatomic, weak) id<KMBasePageVCDataSource> m_datasource;

@property (nonatomic, weak, readonly) UIScrollView *contentView;

@property (nonatomic, assign, readonly) NSInteger totalControllers;

@property (nonatomic, assign, readonly) NSInteger curretnIndex;


@property (nonatomic, assign) CGFloat tabWith;
@property (nonatomic, assign) CGFloat tabSpacing;
@property (nonatomic, assign) CGFloat tabEdging;



@end

@protocol KMBasePageVCDataSource <NSObject>

- (NSInteger)nubmerOfControllersInPagerController:(KMBasePageVC*)pagerController;
- (UIViewController*)pageController:(KMBasePageVC*)pagerController contentControllerForIndex:(NSInteger)index;

@optional

- (NSString*)pagerController:(KMBasePageVC*)pagerController titleForIndex:(NSInteger)index;

@end


@protocol KMBasePageVCDelegate <NSObject>

@optional

- (void)pagerController:(KMBasePageVC *)pagerController transitionFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex animated:(BOOL)animated;

- (void)pagerController:(KMBasePageVC *)pagerController transitionFromIndex:(NSInteger)fromIndex toIndex:(NSInteger)toIndex progress:(CGFloat)progress;


@end
