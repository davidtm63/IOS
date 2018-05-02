//
//  ViewController2.m
//  ServerProject
//
//  Created by user137296 on 4/26/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController2.h"
#import "ServerFunction.h"
@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)guardarDatos:(id)sender{
    NSString * idUsuario = [_userID text];
    NSString * titulo = [_titulo text];
    NSString * cuerpo = [_body text];
    
    ServerFunction * server = [[ServerFunction alloc] init];
    [server guradarDatos:idUsuario title:titulo body:cuerpo];
    
//
//    NSURL * url = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts"];
//    NSError * error;
//    
//    NSDictionary * d = [NSDictionary dictionaryWithObjects:@[idUsuario,titulo,cuerpo] forKeys:@[@"userID",@"title",@"body" ]];
//    NSData * json = [NSJSONSerialization dataWithJSONObject:d options:NSJSONWritingPrettyPrinted error:&error];
//    NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:url];
//    [request setHTTPMethod:@"POST"];
//    [request setHTTPBody:json];
//    NSHTTPURLResponse * response;
//    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * response2,NSData * data,NSError * connectionError){
//        if(error == nil && [response statusCode] == 201){
//            NSLog(@"OK");
//        }else{
//            NSLog(@"MAL");
//        }
//    }];
}

@end












