//
//  KMBaseTableViewDelegate.h
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/17/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import <Foundation/Foundation.h>

@class KMBaseTableView;

@protocol KMBaseTableViewDelegate <NSObject>


@optional

- (void)baseTableView:(KMBaseTableView *)tableView triggerPage:(NSInteger)page;

- (void)baseTableView:(KMBaseTableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

- (void)baseTableView:(KMBaseTableView *)tableView cellButton:(UIButton*)button atIndexPath:(NSIndexPath *)indexPath;
- (void)baseTableView:(KMBaseTableView *)tableView sectionHeaderButton:(UIButton*)button atSection:(NSInteger)section;
- (void)baseTableView:(KMBaseTableView *)tableView sectionFooterButton:(UIButton*)button atSection:(NSInteger)section;





@end
