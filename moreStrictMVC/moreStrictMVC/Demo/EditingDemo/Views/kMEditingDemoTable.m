//
//  kMEditingDemoTable.m
//  moreStrictMVC
//
//  Created by Keye Myria on 10/23/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "kMEditingDemoTable.h"

#import "kMEditingDemoCell.h"
#import "KMPersonModel.h"

static NSString *const iden4EidtingDemoCell = @"iden4EidtingDemoCell";

@implementation kMEditingDemoTable

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
    
        
        [self registerNib:[UINib nibWithNibName:NSStringFromClass([kMEditingDemoCell class]) bundle:nil] forCellReuseIdentifier:iden4EidtingDemoCell];
        
    }
    return self;
}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    kMEditingDemoCell *cell = [tableView dequeueReusableCellWithIdentifier:iden4EidtingDemoCell];
    
    KMPersonModel *pmodel = self.tableData[indexPath.row];
    
    cell.personModel = pmodel;
    
    
    return cell;
}






@end
