//
//  ViewController.m
//  ServerProject
//
//  Created by user137296 on 4/26/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"
#import "ServerFunction.h"
#import "TablaDS.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tablaDS = [[TablaDS alloc] init];
    [_tableView setDataSource:_tablaDS];
}

-(void) viewWillAppear:(BOOL)animated{
    //ClaseDAO * cd = [[ClaseDAO alloc] init];
    //NSError * error;
    [_tablaDS setDatos:[self listarPruebas]];
    [_tableView reloadData];
}

- (NSArray *)listarPruebas {
    // Do any additional setup after loading the view, typically from a nib.
//    ServerFunction * server = [[ServerFunction alloc] init];
//    [server cargarDatos];
    NSURL * url = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts"];
    NSError * error;
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSHTTPURLResponse * respuesta; // Al no poner nada se esta iniciando a nil
    
    NSData * datos = [NSURLConnection sendSynchronousRequest:request returningResponse:&respuesta error:&error];
    NSArray * array = [NSJSONSerialization JSONObjectWithData : datos options : 0 error : nil ];
    
    NSMutableArray *arDatos = [[ NSMutableArray alloc] init];
    for (int i = 0; i < 1;i++){
        NSDictionary * d = (NSDictionary *) [array objectAtIndex:i];
        [arDatos addObject:[d objectForKey:@"title"]];
    }
    return arDatos;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

//NSURL * url = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts"];
//NSError * error;
//NSURLRequest * request = [NSURLRequest requestWithURL:url];
//NSHTTPURLResponse * respuesta; // Al no poner nada se esta iniciando a nil
//
//NSData * datos = [NSURLConnection sendSynchronousRequest:request returningResponse:&respuesta error:&error];
//NSArray * array = [NSJSONSerialization JSONObjectWithData : datos options : 0 error : nil ];
//

//for (int i = 0; i < 1;i++){
//    NSDictionary * d = (NSString *) [array objectAtIndex:i];
//    [_texto setText:[d objectForKey:@"title"]];
//}

