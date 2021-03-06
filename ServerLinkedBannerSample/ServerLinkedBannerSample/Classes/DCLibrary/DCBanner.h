//
//  DCBanner.h
//
//  Created by Masaki Hirokawa on 2013/09/12.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GADBannerView.h"
#import <iAd/iAd.h>

#define GAD_UNIT_ID @"ca-app-pub-0667784050147760/4382741425"

@interface DCBanner : NSObject <ADBannerViewDelegate> {
    BOOL isiAdFailed;
}

#pragma mark - property
@property (nonatomic, strong) ADBannerView *iAdView;
@property (nonatomic, strong) GADBannerView *gadView;
@property (nonatomic, strong) UIViewController *currentRootViewController;

#pragma mark - public method
+ (id)sharedManager;
- (void)showAdBanner:(UIViewController *)viewController yPos:(CGFloat)yPos;
- (void)removeAdBanner;

@end
