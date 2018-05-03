//
//  ViewController.m
//  PreeeExamen!!
//
//  Created by user137296 on 5/2/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"
#import "NoMueras!!.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tablaDS = [[TablaDSDS alloc] init];
    [_tableview setDataSource:_tablaDS];
}

-(void) viewWillAppear:(BOOL)animated{
    [_tablaDS setDatos:[self listarPruebas]];
    [_tableview reloadData];
}

-(NSArray *)listarPruebas{
    NoMueras__ * Controler2 = [[NoMueras__ alloc] init];
    NSMutableArray * arDatos = [Controler2 Miarray2];
    return arDatos;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
