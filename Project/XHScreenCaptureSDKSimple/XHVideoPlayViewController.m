//
//  XHVideoPlayViewController.m
//  XHScreenCapture
//
//  Created by 曾 宪华 on 14-1-8.
//  Copyright (c) 2014年 嗨，我是曾宪华(@xhzengAIB)，曾加入YY Inc.担任高级移动开发工程师，拍立秀App联合创始人，热衷于简洁、而富有理性的事物 QQ:543413507 主页:http://zengxianhua.com All rights reserved.
//

#import "XHVideoPlayViewController.h"
#import <XHScreenCaptureSDK/XHVideoPlayView.h>

@interface XHVideoPlayViewController ()
@property (nonatomic, strong) XHVideoPlayView *videoPlayView;
@end

@implementation XHVideoPlayViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.videoPlayView play];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.title = @"Video play";
    _videoPlayView = [[XHVideoPlayView alloc] initWithFrame:self.view.bounds];
    [_videoPlayView.player setSmoothLoopItemByStringPath:self.videoPath smoothLoopCount:1];
    [self.view addSubview:self.videoPlayView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
