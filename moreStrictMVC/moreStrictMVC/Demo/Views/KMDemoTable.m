//
//  KMDemoTable.m
//  moreStrictMVC
//
//  Created by Keye Myria on 10/23/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMDemoTable.h"

#import "KMDemoCell.h"

static NSString *const iden4DemoCell = @"iden4DemoCell";

@implementation KMDemoTable

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    self = [super initWithFrame:frame style:style];
    if (self) {
        
        [self registerNib:[UINib nibWithNibName:NSStringFromClass([KMDemoCell class]) bundle:nil] forCellReuseIdentifier:iden4DemoCell];
    }
    return self;
}


- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    KMDemoCell *cell = [tableView dequeueReusableCellWithIdentifier:iden4DemoCell];
    
    
    
    return cell;
}



@end
