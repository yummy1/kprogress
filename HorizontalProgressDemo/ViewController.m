//
//  ViewController.m
//  HorizontalProgressDemo
//
//  Created by yummy on 17/04/19.
//  Copyright © 2017年 yummy. All rights reserved.
//

#import "ViewController.h"
#import "HorizontalProgressView.h"

@interface ViewController ()

@end

@implementation ViewController {
    HorizontalProgressView *horizontalProgressView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    horizontalProgressView = [[HorizontalProgressView alloc] init];
    horizontalProgressView.frame = CGRectMake(15, 50, 290, 100);
    horizontalProgressView.progressLevelArray = @[@"提交申请",@"商家同意", @"寄回商品", @"商家收货", @"退款成功"];
    horizontalProgressView.lineMaxHeight = 2;
    horizontalProgressView.pointMaxRadius = 15;
    horizontalProgressView.currentLevel = 3;
    horizontalProgressView.animationDuration = 2;
    horizontalProgressView.textPosition = topPostion;
    [self.view addSubview:horizontalProgressView];
}

- (void)viewDidAppear:(BOOL)animated {
    [horizontalProgressView startAnimation];
}


@end
