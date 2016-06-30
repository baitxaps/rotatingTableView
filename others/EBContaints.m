//
//  EBContaints.m
//  LiveTableView
//
//  Created by hairong.chen on 16/6/29.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import "EBContaints.h"

@implementation EBContaints


+ (CGFloat)ebView:(UIView *)ebView heightForSystemLayoutSizeFittingSize:(CGSize )targetSize {
    
    CGFloat height  = [ebView systemLayoutSizeFittingSize:targetSize].height;
    
    return height;
}

+ (NSArray<__kindof NSLayoutConstraint *> *)ebHorizontalConstraintsWithView:(UIView *)ebView {

    NSArray *containts = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[ebView]-0-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(ebView)];
    
    return containts;
}


+ (NSArray<__kindof NSLayoutConstraint *> *)ebVerticalConstraintsWithView:(UIView *)ebView  viewForHeight:(CGFloat)height {
    
   NSArray *containts  = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[ebView(==height)]" options:0 metrics:@{@"height":@(height)} views:NSDictionaryOfVariableBindings(ebView)];
    return containts ;
    
}




@end
