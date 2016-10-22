//
//  UIViewController+KMFunction.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "UIViewController+KMFunction.h"

@implementation UIViewController (KMFunction)




- (void)endEditing {
    [self.view endEditing:YES];
}

- (void)makeCall:(NSString*)phoneNo {
    NSString *rnum = [NSString stringWithFormat:@"tel://%@", phoneNo];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:rnum]];
}




@end
