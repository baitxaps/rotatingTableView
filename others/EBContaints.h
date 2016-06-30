//
//  EBContaints.h
//  LiveTableView
//
//  Created by hairong.chen on 16/6/29.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface EBContaints : NSObject

+ (CGFloat)ebView:(UIView *)ebView heightForSystemLayoutSizeFittingSize:(CGSize )targetSize ;

+ (NSArray<__kindof NSLayoutConstraint *> *)ebHorizontalConstraintsWithView:(UIView *)ebView ;

+ (NSArray<__kindof NSLayoutConstraint *> *)ebVerticalConstraintsWithView:(UIView *)ebView
                                                            viewForHeight:(CGFloat)height;
                                                    
@end
