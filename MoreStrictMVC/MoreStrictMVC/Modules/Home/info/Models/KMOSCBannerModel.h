//
//  KMOSCBannerModel.h
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "enumList.h"



@interface KMOSCBannerModel : NSObject

@property (nonatomic,strong) NSString* name;

@property (nonatomic,strong) NSString* detail;

@property (nonatomic,strong) NSString* img;

@property (nonatomic,strong) NSString* href;

@property (nonatomic,assign) InformationType type;

@property (nonatomic,assign) NSInteger id;

@property (nonatomic,strong) NSString* time;

@end
