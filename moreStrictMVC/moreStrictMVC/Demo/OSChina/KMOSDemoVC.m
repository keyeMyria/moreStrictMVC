//
//  KMOSDemoVC.m
//  moreStrictMVC
//
//  Created by Keye Myria on 10/23/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMOSDemoVC.h"

#import "KMOSDemoTable.h"


@interface KMOSDemoVC ()<KMBaseTableViewDelegate>


@property (nonatomic, strong) KMOSDemoTable *demoTable;

@end

@implementation KMOSDemoVC




- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frame = CGRectZero;
    
    frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    
    _demoTable = (KMOSDemoTable*)[self addTableViewWithClassStr:NSStringFromClass([KMOSDemoTable class]) frame:frame style:(UITableViewStylePlain) baseDelegate:self inView:self.view];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.demoTable beginRefreshing];
    
    
}

- (void)fetchNetworkingDataAtPage:(NSInteger)page {
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.demoTable endRefreshing];
    });
}

#pragma mark -- base tablevew delegate

- (void)baseTableView:(KMBaseTableView *)baseTable triggerPage:(NSInteger)page {
    [self fetchNetworkingDataAtPage:page];
}

- (void)baseTableView:(KMBaseTableView *)baseTable didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}



@end
