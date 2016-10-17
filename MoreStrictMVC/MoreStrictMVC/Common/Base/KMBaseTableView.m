//
//  KMBaseTableView.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/17/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMBaseTableView.h"


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
