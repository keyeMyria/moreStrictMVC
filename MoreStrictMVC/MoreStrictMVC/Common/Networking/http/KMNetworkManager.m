//
//  KMNetworkManager.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMNetworkManager.h"

@implementation KMNetworkManager


+ (instancetype)shareNetworkingManager {
    static KMNetworkManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[KMNetworkManager alloc] init];
    });
    return instance;
}

- (void)initWithBaseUrl:(NSString *)urlStr {
    _sesseionManager = [[AFHTTPSessionManager alloc] initWithBaseURL:[NSURL URLWithString:urlStr] sessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    _sesseionManager.requestSerializer = [AFHTTPRequestSerializer serializer];
    [_sesseionManager.requestSerializer setValue:[KMNetworkManager generateUserAgent] forHTTPHeaderField:@"User-Agent"];
    
    _sesseionManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    _sesseionManager.responseSerializer.acceptableContentTypes = [_sesseionManager.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"];
}


+ (NSString *)generateUserAgent
{
    NSString *appVersion = [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleShortVersionString"];
    NSString *IDFV = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    
    return [NSString stringWithFormat:@"OSChina.NET/%@/%@/%@/%@/%@", appVersion,
            [UIDevice currentDevice].systemName,
            [UIDevice currentDevice].systemVersion,
            [UIDevice currentDevice].model,
            IDFV];
}
@end
