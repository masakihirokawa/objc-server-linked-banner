//
//  AppDelegate.m
//  ServerLinkedBannerSample
//
//  Created by Masaki Hirokawa on 2013/10/10.
//  Copyright (c) 2013年 Masaki Hirokawa. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // バナー表示設定初期化
    [self initBannerSetting];
    
    return YES;
}

- (void)initBannerSetting
{
    NSString *url = @"http://dolice.net/sample/server_linked_banner.php";
    NSMutableURLRequest *reqest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    [reqest setHTTPMethod:@"GET"];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:reqest delegate:self];
    if (connection) {
        NSURLResponse *response;
        NSError *err;
        NSData *responseData = [NSURLConnection sendSynchronousRequest:reqest returningResponse:&response error:&err];
        NSString *responseStr = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
        isShowBanner = [responseStr intValue] == 1;
    }
}

- (void)applicationWillResignActive:(UIApplication *)application
{
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
}

- (void)applicationWillTerminate:(UIApplication *)application
{
}

@end
