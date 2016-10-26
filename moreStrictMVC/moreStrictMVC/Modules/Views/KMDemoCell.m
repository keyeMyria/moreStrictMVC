//
//  KMDemoCell.m
//  moreStrictMVC
//
//  Created by Keye Myria on 10/23/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMDemoCell.h"

#import "KMDemoModel.h"

@implementation KMDemoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
}

- (void)setDemoModel:(KMDemoModel*)demoModel {
    _demoModel = demoModel;
    
    self.textLabel.text = KMLocalizedString(demoModel.title);
    
}



@end
