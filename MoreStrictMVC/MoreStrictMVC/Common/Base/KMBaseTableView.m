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

@property (nonatomic, assign) NSInteger pageNo;




@end

@implementation KMBaseTableView


- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self configureTable];
    }
    return self;
}


- (void)configureTable {
    
    self.delegate = self;
    
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
    
}

- (void)refreshFooterAction {
    
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




@end

@implementation KMSectionHeaderView



@end

@implementation KMSectionFooterView



@end
