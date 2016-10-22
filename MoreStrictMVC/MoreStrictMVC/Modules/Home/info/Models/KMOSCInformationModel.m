//
//  KMOSCInformationModel.m
//  MoreStrictMVC
//
//  Created by Keye Myria on 10/22/16.
//  Copyright © 2016 Keye Myria. All rights reserved.
//

#import "KMOSCInformationModel.h"

#import "NSTextAttachment+Util.h"


@implementation KMOSCInformationModel

- (NSMutableAttributedString *)attributedBody{
    if (_attributedBody == nil) {
        _attributedBody = [NSMutableAttributedString new];
        
        if (self.recommend) {
            NSTextAttachment* textAttachment = [[NSTextAttachment alloc]init];
            textAttachment.image = [UIImage imageNamed:@"ic_label_today"];
            [textAttachment adjustY:-3];
            NSAttributedString* attachMentString = [NSAttributedString attributedStringWithAttachment:textAttachment];
            [_attributedBody appendAttributedString:attachMentString];
            [_attributedBody appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
        }
        
        [_attributedBody appendAttributedString:[[NSAttributedString alloc] initWithString:self.body]];
        
    }
    return _attributedBody;
}


@end
