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
int const BUTTON_WIDTH = 80;
int const BUTTON_HEIGHT = 20;

@interface IconViewController ()

@property(nonatomic, strong) IconView *iconView;
@property(nonatomic, strong) UIButton *changeButton;

@end

@implementation IconViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self setupIconView];
    [self setupChangeButton];
}

- (void)setupIconView {
    self.iconView = [[IconView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width / 2 - ICON_SIZE / 2, 150, ICON_SIZE, ICON_SIZE)];
    self.iconView.backgroundColor = UIColor.systemGrayColor;
    [self.view addSubview:self.iconView];
}

- (void)setupChangeButton {
    self.changeButton = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetMidX(self.iconView.frame) - BUTTON_WIDTH / 2, CGRectGetMaxY(self.iconView.frame) + 16, BUTTON_WIDTH, BUTTON_HEIGHT)];
    
    [self.changeButton setTitle:@"Change" forState:UIControlStateNormal];
    [self.changeButton setTitleColor:UIColor.systemBlueColor forState:UIControlStateNormal];
    [self.changeButton addTarget:self action:@selector(changeButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.changeButton];
}

- (void)changeButtonDidTap:(UIButton *)button {
    NSLog(@"Change button did tap");
    self.iconView.type = IconViewTypeHeart;
    [self.iconView setNeedsDisplay];
}

@end
