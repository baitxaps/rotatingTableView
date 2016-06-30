//
//  ViewController.m
//  UITest
//
//  Created by hairong.chen on 16/6/21.
//  Copyright © 2016年 hairong.chen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 69)];
    v.backgroundColor = [UIColor greenColor];
    v.tag = 0x100;
    [self.view addSubview:v];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"scrollView.offsety =%f",scrollView.contentOffset.y);
    UIView *v = [self.view viewWithTag:0x100];
    
    UIView *t = [self.tableView viewWithTag:0x200];
    if (scrollView.contentOffset.y >=94.500000) {
        v.hidden = YES;
        t.backgroundColor = [UIColor redColor];
    }else{
        v.hidden = NO;
        t.backgroundColor = [UIColor groupTableViewBackgroundColor];
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    v.backgroundColor = [UIColor groupTableViewBackgroundColor];
    v.tag = 0x200;
    
    return v;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 44;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIndentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndentifier];
    }
    cell.textLabel.text = @"ME";
    return cell;
}

@end
