//
//  UIViewController+Table.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/17/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "UIViewController+Table.h"

#import "KMBaseTableView.h"


@implementation UIViewController (Table)


-(KMBaseTableView*)addTableViewWithClassStr:(NSString *)clazzStr frame:(CGRect)frame style:(UITableViewStyle)style baseDelegate:(id<KMBaseTableViewDelegate>)baseDelegate inView:(UIView*)spview {
    KMBaseTableView *baseTable = [[NSClassFromString(clazzStr) alloc] initWithFrame:frame style:style];
    if (spview) {
        [spview addSubview:baseTable];
    }
    return baseTable;
}


@end
