//
//  ViewController.m
//  LiveTableView
//
//  Created by hairong.chen on 16/6/28.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//


#import "ViewController.h"
#import "EBDispLiveView.h"
#import "EBContaints.h"

@interface ViewController () {
    EBDispLiveView *_displiveView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
}


- (void)setupView {
    _displiveView = [EBDispLiveView initNib];
    
    _displiveView.backgroundColor = [UIColor redColor];
    _displiveView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:_displiveView];
    
    
    CGFloat height = [EBContaints ebView:_displiveView heightForSystemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    
    NSArray *containts = [EBContaints ebHorizontalConstraintsWithView:_displiveView];
    [self.view addConstraints:containts];
    
    containts = [EBContaints ebVerticalConstraintsWithView:_displiveView viewForHeight:height];
    [self.view addConstraints:containts];
    
}


@end
