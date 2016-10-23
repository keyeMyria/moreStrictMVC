//
//  KMDemoTable.m
//  moreStrictMVC
//
//  Created by Keye Myria on 10/23/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMDemoTable.h"

#import "KMDemoCell.h"
#import "KMDemoModel.h"


static NSString *const iden4DemoCell = @"iden4DemoCell";

@implementation KMDemoTable

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self registerNib:[UINib nibWithNibName:NSStringFromClass([KMDemoCell class]) bundle:nil] forCellReuseIdentifier:iden4DemoCell];
    }
    return self;
}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    KMDemoCell *cell = [tableView dequeueReusableCellWithIdentifier:iden4DemoCell];
    KMDemoModel *demoModel = self.tableData[indexPath.row];
    
    cell.demoModel = demoModel;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50.0f;
}

@end
