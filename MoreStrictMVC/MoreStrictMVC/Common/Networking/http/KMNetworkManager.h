//
//  KMNetworkManager.h
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <AFNetworking/AFNetworking.h>

@interface KMNetworkManager : NSObject

@property (nonatomic, strong, readonly) AFHTTPSessionManager *sesseionManager;


+ (instancetype)shareNetworkingManager;


- (void)initWithBaseUrl:(NSString*)urlStr;

@end
