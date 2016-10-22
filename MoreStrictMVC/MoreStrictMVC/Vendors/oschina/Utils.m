//
//  Utils.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "Utils.h"

#import "UIFont+FontAwesome.h"
#import "NSString+FontAwesome.h"

@implementation Utils

#pragma mark 信息处理

+ (NSAttributedString *)attributedTimeString:(NSDate *)date
{
    //    NSString *rawString = [NSString stringWithFormat:@"%@ %@", [NSString fontAwesomeIconStringForEnum:FAClockO], [date timeAgoSinceNow]];
    NSString *rawString = [date timeAgoSinceNow];
    
    NSAttributedString *attributedTime = [[NSAttributedString alloc] initWithString:rawString
                                                                         attributes:@{
                                                                                      NSFontAttributeName: [UIFont fontAwesomeFontOfSize:12],
                                                                                      }];
    
    return attributedTime;
}







@end
