//
//  KMBaseVC.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/17/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMBaseVC.h"

@interface KMBaseVC ()

@end

@implementation KMBaseVC


#pragma mark -- life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
}
- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
}



- (void)endEditing {
    [self.view endEditing:YES];
}

- (void)makeCall:(NSString*)phoneNo {
    NSString *rnum = [NSString stringWithFormat:@"tel://%@", phoneNo];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:rnum]];
}


@end
