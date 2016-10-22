//
//  KMTweetVC.h
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMBaseVC.h"

typedef NS_ENUM(NSUInteger, NewTweetsType)
{
    NewTweetsTypeAllTweets = 1,
    NewTweetsTypeHotestTweets,
    NewTweetsTypeOwnTweets,
};



@interface KMTweetVC : KMBaseVC


@property (nonatomic, copy) void (^didScroll)();

//新接口
-(instancetype)initTweetListWithType:(NewTweetsType)type;
-(instancetype)initTweetListWithTopic:(NSString *)topicTag;


@end
