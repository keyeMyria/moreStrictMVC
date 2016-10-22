//
//  KMTweetVC.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMTweetVC.h"

@interface KMTweetVC ()

@end

@implementation KMTweetVC

- (instancetype)initTweetListWithType:(NewTweetsType)type {
    self = [super init];
    if (self) {
        NSDictionary *para;
        switch (type) {
            case NewTweetsTypeAllTweets:{
                para = @{
                         @"type":@(1),
                         @"pageToken":@""
                         };
            }
                break;
            case NewTweetsTypeHotestTweets: {
                para = @{
                         @"type":@(2),
                         @"pageToken":@""
                         };
            }
                break;
            case NewTweetsTypeOwnTweets: {
                NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
                NSInteger userid = [userDefaults integerForKey:@"userID"];
                para = @{
                         @"authorId": @(userid), //@([Config getOwnID]),
                         @"pageToken":@""
                         };
            }
                break;
            default:
                break;
        }
    }
    return self;
}

- (instancetype)initTweetListWithTopic:(NSString *)topicTag {
    self = [super init];
    if (self) {
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


@end
