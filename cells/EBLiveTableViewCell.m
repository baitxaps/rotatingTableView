//
//  EBLiveTableViewCell.m
//  LiveTableView
//
//  Created by hairong.chen on 16/6/28.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import "EBLiveTableViewCell.h"

@implementation EBLiveTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.contentView.transform=CGAffineTransformMakeRotation(M_PI / 2);// 顺时针旋转90度
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
}

@end
