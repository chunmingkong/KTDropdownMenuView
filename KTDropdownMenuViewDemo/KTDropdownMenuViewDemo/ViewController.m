//
//  ViewController.m
//  KTDropdownMenuViewDemo
//
//  Created by tujinqiu on 15/9/9.
//  Copyright (c) 2015年 tujinqiu. All rights reserved.
//

#import "ViewController.h"
#import "KTDropdownMenuView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.244 green:0.476 blue:1.000 alpha:0.200]];
    NSArray *titles = @[@"首页", @"朋友圈", @"我的关注", @"明星", @"家人朋友"];
    KTDropdownMenuView *menuView = [[KTDropdownMenuView alloc] initWithFrame:CGRectMake(0, 0,100, 44) titles:titles];
    menuView.selectedAtIndex = ^(int index)
    {
        NSLog(@"selected title:%@", titles[index]);
    };
    menuView.width = 300;
    self.navigationItem.titleView = menuView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
