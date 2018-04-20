//
//  ViewController.m
//  PersistenciaDatos
//
//  Created by user137296 on 4/20/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)cargar:(id)sender{
    //Paso 1: recuperamos el path del fichero
    NSString * path = [[NSBundle mainBundle] pathForResource:@"prop" ofType:@"plist"];
    NSDictionary * p1 = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSString * idioma = (NSString *) [p1 objectForKey:@"Idioma"];
    _Datos.text = idioma;
    NSNumber *items = (NSNumber *) [p1 objectForKey:@"Items"];
    _Items.text = [items stringValue];
}

@end
