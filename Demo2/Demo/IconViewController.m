//
//  IconViewController.m
//  Demo2
//
//  Created by Ruslan on 4/17/20.
//  Copyright © 2020 Ruslan Filistovich. All rights reserved.
//

#import "IconViewController.h"
#import "IconView.h"

int const ICON_SIZE = 100;

@interface IconViewController ()

@property(nonatomic, strong) IconView *iconView;

@end

@implementation IconViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self setupIconView];
}

- (void)setupIconView {
    self.iconView = [[IconView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - ICON_SIZE / 2, 150, ICON_SIZE, ICON_SIZE)];
    self.iconView.backgroundColor = UIColor.systemGrayColor;
    [self.view addSubview:self.iconView];
}


@end
