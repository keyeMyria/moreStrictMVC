//
//  KMInfomationTable.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMInfomationTable.h"

#import "KMInfomationCell.h"
#import "KMOSCInformationModel.h"

static NSString *const iden4infomationcell = @"iden4infomationcell";

@interface KMInfomationTable ()



@end

@implementation KMInfomationTable


- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self configureTable];
    }
    return self;
}

- (void)configureTable {
    self.dataSource = self;
    
    [self registerNib:[UINib nibWithNibName:NSStringFromClass([KMOSCInformationModel class]) bundle:nil] forCellReuseIdentifier:iden4infomationcell];
    
}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    KMInfomationCell *cell = [tableView dequeueReusableCellWithIdentifier:iden4infomationcell];
    KMOSCInformationModel *infoModel = self.tableData[indexPath.row];
    
    cell.infoModel = infoModel;
    
    return cell;
}



@end
