//
//  ViewController.m
//  ServerLinkedBannerSample
//
//  Created by Masaki Hirokawa on 2013/10/10.
//  Copyright (c) 2013年 Masaki Hirokawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}

- (void)viewWillAppear:(BOOL)animated
{
    // バナー表示
    [self showADBanner];
}

#pragma mark - Ad Banner

// バナー表示
- (void)showADBanner
{
    if (isShowBanner) {
        NSInteger bannerY = self.view.frame.size.height - AD_BANNER_HEIGHT;
        [[DCBanner sharedManager] showAdBanner:self yPos:bannerY];
    }
}

// バナー削除
- (void)removeADBanner
{
    if (isShowBanner) {
        [[DCBanner sharedManager] removeAdBanner];
    }
}

@end
