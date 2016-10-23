//
//  KMOSDemoTable.m
//  moreStrictMVC
//
//  Created by Keye Myria on 10/23/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMOSDemoTable.h"

#import "KMOSDemoCell.h"

#import "KMOSInfoModel.h"

static NSString *const iden4OSDemoCell = @"iden4OSDemoCell";

@implementation KMOSDemoTable



- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        
        self.needRefreshFooter = YES;
        self.needRefreshHeader = YES;
        
        [self registerNib:[UINib nibWithNibName:NSStringFromClass([KMOSDemoCell class]) bundle:nil] forCellReuseIdentifier:iden4OSDemoCell];
    }
    return self;
}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    KMOSDemoCell *cell = [tableView dequeueReusableCellWithIdentifier:iden4OSDemoCell];
    
    KMOSInfoModel *infoModel = self.tableData[indexPath.row];
    
    cell.infoModel = infoModel;
    
    return cell;
}



@end
