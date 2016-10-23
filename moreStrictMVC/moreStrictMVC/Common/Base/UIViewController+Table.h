//
//  UIViewController+Table.h
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/17/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "KMBaseTableViewDelegate.h"


@class KMBaseTableView;


@interface UIViewController (Table)


-(KMBaseTableView*)addTableViewWithClassStr:(NSString *)clazzStr frame:(CGRect)frame style:(UITableViewStyle)style baseDelegate:(id<KMBaseTableViewDelegate>)baseDelegate inView:(UIView*)spview;

@end
