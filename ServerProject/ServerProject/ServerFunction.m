//
//  ServerFunction.m
//  ServerProject
//
//  Created by user137296 on 4/26/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ServerFunction.h"

@implementation ServerFunction

-(void) guradarDatos:(NSString *)userID title:(NSString *)title body:(NSString *)body{
//    if( self = [ super init ]){
    
    NSURL * url = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts"];
    NSError * error;
    
    NSDictionary * d = [NSDictionary dictionaryWithObjects:@[userID,title,body] forKeys:@[@"userID",@"title",@"body" ]];
    NSData * json = [NSJSONSerialization dataWithJSONObject:d options:NSJSONWritingPrettyPrinted error:&error];
    NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:json];
    NSHTTPURLResponse * response;
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * response2,NSData * data,NSError * connectionError){
        if(error == nil && [response statusCode] == 201){
            NSLog(@"OK");
        }else{
            NSLog(@"MAL");
        }
    }];
    //}
}

- (NSArray *)cargarDatos{
    NSURL * url = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts"];
    NSError * error;
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSHTTPURLResponse * respuesta; // Al no poner nada se esta iniciando a nil
    
    NSData * datos = [NSURLConnection sendSynchronousRequest:request returningResponse:&respuesta error:&error];
    NSArray * array = [NSJSONSerialization JSONObjectWithData : datos options : 0 error : nil ];
    return array;
}

@end
