//
//  KMOSInfoModel.h
//  moreStrictMVC
//
//  Created by Keye Myria on 10/23/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KMOSInfoModel : NSObject



@property (nonatomic,assign) NSInteger id;

@property (nonatomic,strong) NSString* title;

@property (nonatomic,strong) NSString* body;

@property (nonatomic,assign) NSInteger commentCount;

@property (nonatomic,assign) NSInteger viewCount;

@property (nonatomic,strong) NSString* author;

//@property (nonatomic,assign) InformationType type;

@property (nonatomic,strong) NSString* href;

//@property (nonatomic,assign) BOOL recommend;

@property (nonatomic,strong) NSString* pubDate;

@property (nonatomic,strong) NSMutableAttributedString* attributedBody;






@end
