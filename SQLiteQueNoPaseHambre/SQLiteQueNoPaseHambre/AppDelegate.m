//
//  AppDelegate.m
//  SQLiteQueNoPaseHambre
//
//  Created by user137296 on 4/23/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString * directorioDocumentos = [paths objectAtIndex:0];
    NSString * pathBBDDModi = [directorioDocumentos stringByAppendingPathComponent:@"bbdd.sqlite"];
    BOOL ok = [[NSFileManager defaultManager] fileExistsAtPath:pathBBDDModi];
    if(ok) return YES;
    NSString * pathBBDDBundle = [[[NSBundle mainBundle] resourcePath]
                                 stringByAppendingPathComponent:@"bbdd.sqlite"];
    NSError * error;
    ok = [[NSFileManager defaultManager] copyItemAtPath:pathBBDDBundle toPath:pathBBDDModi error:&error];
   
    if(!ok) NSAssert1(0,@"Error al copiar BBDD", [error localizedDescription]);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
