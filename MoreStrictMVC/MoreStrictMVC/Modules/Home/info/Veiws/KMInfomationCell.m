//
//  KMInfomationCell.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMInfomationCell.h"

#import "Utils.h"

#import "KMOSCInformationModel.h"

@interface KMInfomationCell ()


@property (weak, nonatomic) IBOutlet UIImageView *recommendImageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeDistanceLabel;

@property (weak, nonatomic) IBOutlet UILabel *viewCountLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;

@property (weak, nonatomic) IBOutlet UIImageView *commentImageView;

@end

@implementation KMInfomationCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    NSMutableParagraphStyle* style = [[NSMutableParagraphStyle alloc]init];
    style.lineSpacing = 20;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
}

- (void)setInfoModel:(KMOSCInformationModel *)infoModel {
    _infoModel = infoModel;
    
    
    _titleLabel.textColor = [UIColor newTitleColor];
    
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    NSDate* date = [formatter dateFromString:infoModel.pubDate];
    NSDate *systemDate = [formatter dateFromString:_systemTimeDate];
    NSDate *subDate = [formatter dateFromString:[NSString stringWithFormat:@"%@ 00:00:00", [_systemTimeDate componentsSeparatedByString:@" "][0]]];
    
    int timeSecond = [systemDate timeIntervalSince1970] - [date timeIntervalSince1970];
    int subTime = [systemDate timeIntervalSince1970] - [subDate timeIntervalSince1970];
    
    if (timeSecond <= subTime) {//"推荐"新闻
        _recommendImageView.hidden = NO;
        _titleLabel.text = [NSString stringWithFormat:@"     %@",infoModel.title];
    } else{//不是"推荐"新闻 普通新闻
        _recommendImageView.hidden = YES;
        _titleLabel.text = infoModel.title;
    }
    
    _descLabel.text = infoModel.body;
    _commentLabel.text = [NSString stringWithFormat:@"%ld",(long)infoModel.commentCount];
    _viewCountLabel.text = [NSString stringWithFormat:@"%ld",(long)infoModel.viewCount];
    
    [_timeDistanceLabel setAttributedText:[Utils attributedTimeString:date]];
        
}



@end
