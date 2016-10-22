//
//  KMBasePageVC.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMBasePageVC.h"

@interface KMBasePageVC ()<UIScrollViewDelegate>



@property (nonatomic, weak) UIScrollView *contentView;
@property (nonatomic, assign) NSInteger totalControllers;
@property (nonatomic, assign) NSInteger curretnIndex;


@end

@implementation KMBasePageVC

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
}

- (void)configureView {
    
    UIScrollView *contentView = [[UIScrollView alloc]init];
    contentView.showsHorizontalScrollIndicator = NO;
    contentView.showsVerticalScrollIndicator = NO;
    contentView.pagingEnabled = YES;
    contentView.delegate = self;
    [self.view addSubview:contentView];
    _contentView = contentView;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
