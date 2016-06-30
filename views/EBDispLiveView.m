//
//  EBDispLiveView.m
//  LiveTableView
//
//  Created by hairong.chen on 16/6/29.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import "EBDispLiveView.h"
#import "EBLiveTableViewCell.h"
#import "EBCommentsCell.h"


@interface EBDispLiveView ()<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) UITableView *tableView;

@end


@implementation EBDispLiveView

- (void)awakeFromNib {
    [super awakeFromNib ];
    
    [self setupView];
}

- (void)setupView {
    [self addSubview:self.tableView];  
    [self.tableView registerNib:[UINib nibWithNibName:@"EBLiveTableViewCell" bundle:nil] forCellReuseIdentifier:@"EBLiveTableViewCell"];
}

-(UITableView *)tableView {
    if (!_tableView) {
        _tableView=[[UITableView alloc]initWithFrame:CGRectMake(0,0,130,SCREEN_WIDTH)
                                               style:UITableViewStylePlain];// 宽逆时针旋转90度 转为高， 高->宽
        [_tableView setTransform:CGAffineTransformMakeRotation(-M_PI / 2)]; // 旋转方向为：顺时针旋转

        _tableView.center=CGPointMake(SCREEN_WIDTH/2.0,65);// 旋转是以center为中心旋转的
        _tableView.delegate=self;
        _tableView.dataSource=self;
        _tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
        _tableView.showsVerticalScrollIndicator=NO;
    }
    return _tableView;
}

+ (instancetype)initNib {
    EBDispLiveView *view = [[NSBundle mainBundle]loadNibNamed:@"EBDispLiveView" owner:self options:nil][0];
    
    return view ;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 30;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 202;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    EBLiveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EBLiveTableViewCell"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
