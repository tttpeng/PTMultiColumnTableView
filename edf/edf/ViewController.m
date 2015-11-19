//
//  ViewController.m
//  edf
//
//  Created by Peng Tao on 15/11/17.
//  Copyright © 2015年 Peng Tao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
  self.view.multipleTouchEnabled = YES;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
  NSInteger num = [[event allTouches] count];
  NSLog(@"number of touch:%d",num);
}


- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
  NSInteger num = [[event allTouches] count];
  NSLog(@"222number of touch:%d",num);
}


- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
  NSInteger num = [[event allTouches] count];
  NSLog(@"1111number of touch:%d",num);
  
}

@end
