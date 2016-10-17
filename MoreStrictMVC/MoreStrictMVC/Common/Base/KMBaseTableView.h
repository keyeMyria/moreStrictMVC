//
//  KMBaseTableView.h
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/17/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "KMBaseTableViewDelegate.h"

#define TagBase4SectionHeaderView 1000
#define TagBase4SectionFooterView 2000


@interface KMBaseTableView : UITableView<UITableViewDelegate, UITableViewDataSource>


@property (nonatomic, assign, readonly) NSInteger pageNo;

@property (nonatomic, weak) id<KMBaseTableViewDelegate> baseDelegate;

- (void)buttonInCellAction:(id)sender;

- (void)buttonInSectionHeaderViewAction:(id)sender;
- (void)buttonInSectionFooterViewAction:(id)sender;

@end

@interface KMSectionHeaderView : UIView

@end

@interface KMSectionFooterView : UIView

@end
