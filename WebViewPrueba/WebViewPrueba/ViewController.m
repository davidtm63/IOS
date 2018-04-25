//
//  ViewController.m
//  WebViewPrueba
//
//  Created by user137296 on 4/25/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Users/user137296/Documents/GitHub/IOS/WebViewPrueba/WebViewPrueba/Base.lproj/LaunchScreen.storyboard
//    NSString * texto = @"<html><body><h2 align = 'center'> HTML ESTATICO</h2></body></html>";
//    [_webView loadHTMLString:texto baseURL:nil];
    NSString * texto = @"<html><body style='background-color:DodgerBlue';><h2 style='border:2px solid Tomato'; align = 'center'> HTML INICIO</h2><h3 align = 'center'>ELIGE UNA OPCION</h3><p align = 'center'>1 - Google</p> <p align = 'center'>2 - StackOverFlow</p><p align = 'center'>3 - Apple Developer</p><p align = 'center'>4 - RayWenderlich</p></body></html>";
    [_webView loadHTMLString:texto baseURL:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)boton1:(id)sender{
    NSURL * url = [NSURL URLWithString:@"http://www.google.es"];
    NSURLRequest * loadurl = [[NSURLRequest alloc] initWithURL:url];
    [_webView loadRequest:loadurl];
}
-(IBAction)boton2:(id)sender{
    NSURL * url = [NSURL URLWithString:@"https://stackoverflow.com"];
    NSURLRequest * loadurl = [[NSURLRequest alloc] initWithURL:url];
    [_webView loadRequest:loadurl];
}
-(IBAction)boton3:(id)sender{
    NSURL * url = [NSURL URLWithString:@"https://developer.apple.com"];
    NSURLRequest * loadurl = [[NSURLRequest alloc] initWithURL:url];
    [_webView loadRequest:loadurl];
}
-(IBAction)boton4:(id)sender{
    NSURL * url = [NSURL URLWithString:@"https://www.raywenderlich.com"];
    NSURLRequest * loadurl = [[NSURLRequest alloc] initWithURL:url];
    [_webView loadRequest:loadurl];
}
-(IBAction)inicio:(id)sender{
   NSString * texto = @"<html><body style='background-color:DodgerBlue';><h2 style='border:4px solid Tomato'; align = 'center'> HTML INICIO</h2><h3 align = 'center'>ELIGE UNA OPCION</h3><p align = 'center'>1 - Google</p> <p align = 'center'>2 - StackOverFlow</p><p align = 'center'>3 - Apple Developer</p><p align = 'center'>4 - RayWenderlich</p></body></html>";
    [_webView loadHTMLString:texto baseURL:nil];
}

@end
