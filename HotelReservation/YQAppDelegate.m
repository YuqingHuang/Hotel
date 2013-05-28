//
//  YQAppDelegate.m
//  HotelReservation
//
//  Created by Huang Yuqing on 05/20/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "YQAppDelegate.h"
#import "YQHotelSelector.h"

@implementation YQAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    for (NSString *inputLine in [self getInputLines]) {
        NSArray *customerAndDays = [inputLine componentsSeparatedByString:@":"];
        NSString *customerType = customerAndDays[0];
        NSArray *days = [customerAndDays[1] componentsSeparatedByString:@","];
        YQHotelSelector *hotelSelector = [[YQHotelSelector alloc] init];

        NSString *result;
        if ([customerType isEqual:@"Regular"]) {
            result = [hotelSelector selectTheCheapestHotelWithCustomerType:REGULARCUSTOMER WithDays:days];
        } else {
            result = [hotelSelector selectTheCheapestHotelWithCustomerType:REWARDCUSTOMER WithDays:days];
        }
        NSLog(@"%@", result);
    }

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    //read file

    return YES;
}

- (NSArray *)getInputLines {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"input"
                                                     ofType:@"txt"];
    NSString *content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    NSArray *allLinedStrings = [content componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    return allLinedStrings;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.

}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.

}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.

}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.

}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.

}

@end