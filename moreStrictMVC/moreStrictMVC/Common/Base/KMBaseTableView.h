//
//  KMBaseTableView.h
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/17/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <MJRefresh/MJRefresh.h>

#import "KMBaseTableViewDelegate.h"

#define TagBase4SectionHeaderView 1000
#define TagBase4SectionFooterView 2000


@interface KMBaseTableView : UITableView<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *tableData;

@property (nonatomic, assign, readonly) NSInteger currentPage;
@property (nonatomic, weak) id<KMBaseTableViewDelegate> baseDelegate;

@property (nonatomic, assign) BOOL needRefreshHeader;
@property (nonatomic, assign) BOOL needRefreshFooter;


- (void)freshTableWith:(NSArray*)data atPage:(NSInteger)pageNo;

- (void)buttonInCellAction:(id)sender;

- (void)buttonInSectionHeaderViewAction:(id)sender;
- (void)buttonInSectionFooterViewAction:(id)sender;

- (void)beginRefreshing;
- (void)endRefreshing;

@end

@interface KMSectionHeaderView : UIView

@end

@interface KMSectionFooterView : UIView

@end
