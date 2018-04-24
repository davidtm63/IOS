//
//  ViewController.m
//  SQliteEjemplo
//
//  Created by user137296 on 4/20/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"
#import "ClasePrueba.h"
#import "TestDAO.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //Iniciamos el dataSource y lo vinculamos a la tabla
    _tablaDS = [[TablaDS alloc] init];
    [_tablePrueba setDataSource:_tablaDS];
}

-(void) viewWillAppear:(BOOL)animated{
    //Asignamos los datos al DataSource
    TestDAO * td = [[TestDAO alloc] init];
    
//    [_tablaDS setPruebas:[td listarPruebas]];
    NSError * error;
    [_tablaDS setPruebas:[td listarPruebas:&error]];
    [_tablePrueba reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)guardarClick:(id)sender{
    [self insertarbd];
}

-(void) insertarbd{
    NSString *_nombre = [_tfNombre text];
    NSString * _pais = [_tfPais text];
    
    ClasePrueba * cp = [[ClasePrueba alloc] initConNombre:_nombre pais:_pais];
    NSError * error;
    TestDAO * td = [[TestDAO alloc] init];
    [td insertarRecord:cp error:&error];
    [_tfNombre setText:@""];
    [_tfPais setText:@""];
}

-(IBAction)recuperarClick:(id)sender{
    NSError * error;
    TestDAO * td = [[TestDAO alloc] init];
    ClasePrueba * cp = [td recuperarRecord];
    [_tfNombre setText:cp.nombre];
    [_tfPais setText:cp.pais];
}
@end
