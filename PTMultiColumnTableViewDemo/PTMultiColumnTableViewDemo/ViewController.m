//
//  ViewController.m
//  PTMultiColumnTableViewDemo
//
//  Created by Peng Tao on 15/11/16.
//  Copyright © 2015年 Peng Tao. All rights reserved.
//

#import "ViewController.h"
#import "PTMultiColumnTableView.h"

@interface ViewController () <PTMultiColumnTableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  PTMultiColumnTableView *multiColumView = [[PTMultiColumnTableView alloc] initWithFrame:self.view.frame];
  multiColumView.dataSource = self;
  [self.view addSubview:multiColumView];
}


- (NSInteger)numberOfColumnsInTableView:(PTMultiColumnTableView *)tableView
{
  return 20;
}
- (NSInteger)numberOfRowsInTableView:(PTMultiColumnTableView *)tableView
{
  return 30;
}
- (NSString *)columnNameInColumn:(NSInteger)column
{
  return [NSString stringWithFormat:@"--->%ld",(long)column];
}
- (NSString *)rowNameInRow:(NSInteger)row
{
  
  return [NSString stringWithFormat:@">>>>>%ld",(long)row];
  
}
- (NSString *)contentAtColumn:(NSInteger)column row:(NSInteger)row
{
  return [NSString stringWithFormat:@"****%d-%d",column,row];
}


@end
