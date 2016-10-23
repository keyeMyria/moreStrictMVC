//
//  KMOSDemoCell.m
//  moreStrictMVC
//
//  Created by Keye Myria on 10/23/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMOSDemoCell.h"

#import "KMOSInfoModel.h"

@implementation KMOSDemoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

- (void)setInfoModel:(KMOSInfoModel *)infoModel {
    _infoModel = infoModel;

    self.label4title.text = _infoModel.title;
    self.label4desc.text = _infoModel.body;
    
    
    
}




@end
