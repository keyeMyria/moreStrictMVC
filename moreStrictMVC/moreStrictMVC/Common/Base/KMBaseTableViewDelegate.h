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

- (void)baseTableView:(KMBaseTableView *)baseTable triggerPage:(NSInteger)page;

- (void)baseTableView:(KMBaseTableView *)baseTable didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

- (void)baseTableView:(KMBaseTableView *)baseTable cellButton:(UIButton*)button atIndexPath:(NSIndexPath *)indexPath;
- (void)baseTableView:(KMBaseTableView *)baseTable sectionHeaderButton:(UIButton*)button atSection:(NSInteger)section;
- (void)baseTableView:(KMBaseTableView *)baseTable sectionFooterButton:(UIButton*)button atSection:(NSInteger)section;





@end
