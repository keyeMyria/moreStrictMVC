//
//  KMNetrequest.h
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "AFHTTPSessionManager.h"

typedef void(^RequestProgress)(NSProgress *progress);
typedef void(^RequestSuccess)(id someObj);
typedef void(^RequestFailure)(NSError *error);


@interface KMNetrequest : NSObject


- (void)methodGET:(NSString*)path params:(NSDictionary*)params needAuth:(BOOL)needAuth success:(RequestSuccess)success failure:(RequestFailure)failure;

- (void)methodPOST:(NSString*)path params:(NSDictionary*)params needAuth:(BOOL)needAuth progress:(RequestProgress)progress success:(RequestSuccess)success failure:(RequestFailure)failure;

- (void)mutiFormPost:(NSString*)path params:(NSDictionary*)params needAuth:(BOOL)needAuth progress:(RequestProgress)progress success:(RequestSuccess)success failure:(RequestFailure)failure;



@end
