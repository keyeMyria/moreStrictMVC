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
    
    _demoTable = (KMOSDemoTable*)[self addTableViewWithClassStr:NSStringFromClass([KMOSDemoTable class]) frame:frame style:(UITableViewStylePlain) baseDelegate:self inView:self.view];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}








@end
