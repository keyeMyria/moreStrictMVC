//
//  KMInfomationVC.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMInfomationVC.h"

#import "KMInfomationTable.h"


@interface KMInfomationVC ()<KMBaseTableViewDelegate>


@property (nonatomic, strong) KMInfomationTable *infoTable;


@end

@implementation KMInfomationVC





- (void)viewDidLoad {
    [super viewDidLoad];

    CGRect frame = CGRectMake(0, 0, SCREEN_WIDTH, HEIGHT_CONTENT - 49);
    
    _infoTable = (KMInfomationTable*)[self addTableViewWithClassStr:NSStringFromClass([KMInfomationTable class]) frame:frame style:(UITableViewStylePlain) baseDelegate:self inView:self.view];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


- (void)baseTableView:(KMBaseTableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (void)baseTableView:(KMBaseTableView *)tableView triggerPage:(NSInteger)page {
    
}




@end
