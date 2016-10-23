//
//  KMDemoVC.m
//  moreStrictMVC
//
//  Created by Keye Myria on 10/23/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMDemoVC.h"

#import "KMDemoModel.h"
#import "MJExtension.h"

#import "KMDemoTable.h"


@interface KMDemoVC ()<KMBaseTableViewDelegate>

@property (nonatomic, strong) KMDemoTable *demoTable;


@end

@implementation KMDemoVC


- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray<KMDemoModel*> *tarr = [KMDemoModel mj_objectArrayWithFilename:@"demo.plist"];
    
    CGRect frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREENH_HEIGHT);
    _demoTable = (KMDemoTable*)[self addTableViewWithClassStr:NSStringFromClass([KMDemoTable class]) frame:frame style:(UITableViewStylePlain) baseDelegate:self inView:self.view];
    
    _demoTable.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    
    [self.demoTable freshTableWith:tarr atPage:1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark base table delegate

- (void)baseTableView:(KMBaseTableView *)baseTable didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    KMDemoModel *demoModel = baseTable.tableData[indexPath.row];
    
    if (demoModel.clazz.length > 0) {
        
        KMBaseVC *vc = [[NSClassFromString(demoModel.clazz) alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    
}





@end
