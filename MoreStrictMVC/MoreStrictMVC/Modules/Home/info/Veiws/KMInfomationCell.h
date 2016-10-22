//
//  KMInfomationCell.h
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KMOSCInformationModel;

@interface KMInfomationCell : UITableViewCell

@property (nonatomic, strong) KMOSCInformationModel *infoModel;

@property (nonatomic, copy) NSString *systemTimeDate;


@end
