//
//  ViewController.m
//  PuebaApp1
//
//  Created by user137296 on 4/17/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"ViewDidLoad");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    NSLog(@"ViewWillAppear");
}
- (void)viewDidAppear:(BOOL)animated{
    NSLog(@"ViewDidAppear");
}
-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"ViewWillDisappear");
}
- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"ViewDidDisappear");
}
@end
