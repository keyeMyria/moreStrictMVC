//
//  KMOSDemoCell.h
//  moreStrictMVC
//
//  Created by Keye Myria on 10/23/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KMOSInfoModel;

@interface KMOSDemoCell : UITableViewCell

@property (nonatomic, strong) KMOSInfoModel *infoModel;

@property (nonatomic, strong) IBOutlet UILabel *label4title;
@property (nonatomic, strong) IBOutlet UILabel *label4desc;




@end
