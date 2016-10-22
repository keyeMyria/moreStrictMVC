//
//  KMBaseTableView.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/17/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMBaseTableView.h"

#import <MJRefresh/MJRefresh.h>


@interface KMBaseTableView ()

@property (nonatomic, assign) NSInteger currentPage;




@end

@implementation KMBaseTableView


- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self configure];
    }
    return self;
}


- (void)configure{
    self.currentPage = 1;
    self.tableData = [NSMutableArray array];
    
    self.delegate = self;
    self.dataSource = self;
    
}

- (void)freshTableWith:(NSArray*)data atPage:(NSInteger)pageNo {
    self.currentPage = pageNo;
    if (pageNo == 1) {
        [self.tableData removeAllObjects];
        [self.tableData addObjectsFromArray:data];
    } else {
        [self.tableData addObjectsFromArray:data];
    }
    [self endRefreshing];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self reloadData];
    });
}

#pragma mark getter/setter
- (void)setNeedRefreshHeader:(BOOL)needRefreshHeader {
    _needRefreshHeader = needRefreshHeader;
    if (_needRefreshHeader) {
        self.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refreshHeaderAction)];
    } else {
        if (self.mj_header) {
            [self.mj_header removeFromSuperview];
        }
    }
}

- (void)setNeedRefreshFooter:(BOOL)needRefreshFooter {
    _needRefreshFooter = needRefreshFooter;
    if (_needRefreshFooter) {
        self.mj_footer = [MJRefreshAutoNormalFooter footerWithRefreshingTarget:self refreshingAction:@selector(refreshFooterAction)];
    } else {
        if (self.mj_footer) {
            [self.mj_footer removeFromSuperview];
        }
    }
}

- (void)refreshHeaderAction {
    if (self.baseDelegate && [self.baseDelegate respondsToSelector:@selector(baseTableView:triggerPage:)]) {
        [self.baseDelegate baseTableView:self triggerPage:1];
    }
}

- (void)refreshFooterAction {
    
    if (self.baseDelegate && [self.baseDelegate respondsToSelector:@selector(baseTableView:triggerPage:)]) {
        [self .baseDelegate baseTableView:self triggerPage:self.currentPage+1];
    }
}


- (void)beginRefreshing {
    if (self.mj_header) {
        [self.mj_header beginRefreshing];
    }
}
- (void)endRefreshing {
    if (self.mj_header) {
        [self.mj_header endRefreshing];
    }
    if (self.mj_footer) {
        [self.mj_footer endRefreshing];
    }
}

- (void)buttonInCellAction:(id)sender {
    
    UIButton *button = (UIButton*)sender;
    UIView *spview = [button superview];
    do {
        spview = [spview superview];
    } while (spview && ![spview isKindOfClass:[UITableViewCell class]]);
    NSIndexPath *indexPath = [self indexPathForCell:(UITableViewCell*)spview];
    if (self.baseDelegate && [self.baseDelegate respondsToSelector:@selector(baseTableView:cellButton:atIndexPath:)]) {
        [self.baseDelegate baseTableView:self cellButton:button atIndexPath:indexPath];
    }
}

- (void)buttonInSectionHeaderViewAction:(id)sender {
    
    UIButton *button = (UIButton*)sender;
    
    UIView *spview = [button superview];
    while (spview && ![spview isKindOfClass:[KMSectionHeaderView class]]) {
        spview = [spview superview];
    }
    NSInteger section = spview.tag - TagBase4SectionHeaderView;
    if (self.baseDelegate && [self.baseDelegate respondsToSelector:@selector(baseTableView:sectionHeaderButton:atSection:)]) {
        [self.baseDelegate baseTableView:self sectionHeaderButton:button atSection:section];
    }
}

- (void)buttonInSectionFooterViewAction:(id)sender {
    UIButton *button = (UIButton*)sender;
    
    UIView *spview = [button superview];
    while (spview && ![spview isKindOfClass:[KMSectionHeaderView class]]) {
        spview = [spview superview];
    }
    NSInteger section = spview.tag - TagBase4SectionFooterView;
    if (self.baseDelegate && [self.baseDelegate respondsToSelector:@selector(baseTableView:sectionFooterButton:atSection:)]) {
        [self.baseDelegate baseTableView:self sectionFooterButton:button atSection:section];
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (self.baseDelegate && [self.baseDelegate respondsToSelector:@selector(baseTableView:didSelectRowAtIndexPath:)]) {
        [self.baseDelegate baseTableView:self didSelectRowAtIndexPath:indexPath];
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableData.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

@end

@implementation KMSectionHeaderView



@end

@implementation KMSectionFooterView



@end
