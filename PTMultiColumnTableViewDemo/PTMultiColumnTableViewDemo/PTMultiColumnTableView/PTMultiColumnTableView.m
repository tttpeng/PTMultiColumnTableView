//
//  PTMultiColumnTableView.m
//  PTMultiColumnTableViewDemo
//
//  Created by Peng Tao on 15/11/16.
//  Copyright © 2015年 Peng Tao. All rights reserved.
//

#import "PTMultiColumnTableView.h"

@interface PTMultiColumnTableView ()
<UITableViewDataSource, UITableViewDelegate>

@end

@implementation PTMultiColumnTableView


- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(50, 50, self.frame.size.width - 50, self.frame.size.height - 50)];
    scrollView.bounces = [UIColor brownColor];

    scrollView.bounces = NO;
    [self addSubview:scrollView];

    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 2000, scrollView.frame.size.height)];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.bounces = NO;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [scrollView addSubview:tableView];
    scrollView.contentSize = tableView.frame.size;
//    
//    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(199, 0, 1, scrollView.contentSize.height)];
//
//    line.backgroundColor = [UIColor redColor];
//    [tableView addSubview:line];
    
    tableView.backgroundColor = [UIColor grayColor];
  }
  return self;
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];

  cell.backgroundColor = [UIColor grayColor];
  for (int i = 0; i < 10 ; i++) {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(200 * i, 0, 199 , 43)];\
//    view.backgroundColor = [self randomColor];
    view.backgroundColor = [UIColor whiteColor];
    

    [cell.contentView addSubview:view];
  }
  
  return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return 30;
}

- (UIView *)addVerticalLineWithWidth:(CGFloat)width bgColor:(UIColor *)color atX:(CGFloat)x {
  UIView *line = [[UIView alloc] initWithFrame:CGRectMake(x, 0.0f, width, self.bounds.size.height)];
  line.backgroundColor = color;
  line.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleRightMargin;
  return line;
}



- (UIColor *)randomColor{
  
  CGFloat red = (CGFloat)random()/(CGFloat)RAND_MAX;
  CGFloat green = (CGFloat)random()/(CGFloat)RAND_MAX;
  CGFloat blue = (CGFloat)random()/(CGFloat)RAND_MAX;
  return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];//alpha为1.0,颜色完全不透明
}

@end
