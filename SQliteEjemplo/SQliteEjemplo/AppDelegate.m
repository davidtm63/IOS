//
//  AppDelegate.m
//  SQliteEjemplo
//
//  Created by user137296 on 4/20/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //Vamos a mirar si el fichero de la base de datos existe en la carpeta del usuario. Si existe no haremos nada y si no existe la
    //copiaremos
    //Paso 1 : Localizamos el direction de documentos del usuario
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    //Recuperamos el nombre de la ruta
    NSString * directorioDocumentos = [paths objectAtIndex:0];
    //Ahora montamos el nombre completo de la ruta, path + fichero
    NSString * pathBBDDModi = [directorioDocumentos stringByAppendingPathComponent:@"bbdd.sqlite"];
    //Paso 2 : Comprobar que el fichero esta o no en la carpeta de documentos del usuario
    BOOL ok = [[NSFileManager defaultManager] fileExistsAtPath:pathBBDDModi];
    //Si existe el fichero -- Salimos de la funcion (return YES)
    if(ok) return YES;
    //Paso 3 : Copiamos la base de datos en la carpeta de la aplicacion a la del usuario
    //Lo primero es obtener el nombre de la ruta donde esta el sqlite
    NSString * pathBBDDBundle = [[[NSBundle mainBundle] resourcePath]
                                 stringByAppendingPathComponent:@"bbdd.sqlite"];
    //Realizamos la copia
    //NSError es una clase para gestionar losmensjaes de error
    NSError * error;
    ok = [[NSFileManager defaultManager] copyItemAtPath:pathBBDDBundle toPath:pathBBDDModi error:&error];
    //En caso de error lo mostramos con un NSAssert
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
