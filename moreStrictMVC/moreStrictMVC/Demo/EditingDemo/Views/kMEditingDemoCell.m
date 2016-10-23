//
//  kMEditingDemoCell.m
//  moreStrictMVC
//
//  Created by Keye Myria on 10/23/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "kMEditingDemoCell.h"

#import "KMPersonModel.h"

@implementation kMEditingDemoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
}

- (void)setPersonModel:(KMPersonModel *)personModel {
    _personModel = personModel;
    
    self.textLabel.text = [NSString stringWithFormat:@"%@ %@", personModel.firstName, personModel.lastName];
    self.detailTextLabel.text = personModel.address;
}




@end
