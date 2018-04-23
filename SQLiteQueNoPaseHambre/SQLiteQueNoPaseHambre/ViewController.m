//
//  ViewController.m
//  SQLiteQueNoPaseHambre
//
//  Created by user137296 on 4/23/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"
#import "ClaseGrupo.h"
#import "ClaseDAO.h"
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
-(IBAction)guardarClick:(id)sender{
    NSString * _nombre = [_tfNombre text];
    NSString * _genero = [_tfGenero text];
    NSString * _pais = [_tfPais text];
    int _year = [[_tfYear text] intValue];
    
    ClaseGrupo * cg = [[ClaseGrupo alloc] initConNombre:_nombre genero:_genero pais:_pais year:_year];
    NSError * error;
    ClaseDAO * cd = [[ClaseDAO alloc] init];
    [cd insertarRecord:cg error:&error];
    
    [_tfNombre setText:@""];
    [_tfGenero setText:@""];
    [_tfPais setText:@""];
    [_tfYear setText:@""];
    
}
-(IBAction)borrarClick:(id)sender{
    
}
-(IBAction)limpiarClick:(id)sender{
    [_tfNombre setText:@""];
    [_tfGenero setText:@""];
    [_tfPais setText:@""];
    [_tfYear setText:@""];
}
-(IBAction)cancelClick:(id)sender{
    
}

-(IBAction)recuperarClick:(id)sender{
    NSError * error;
    ClaseDAO * cdao = [[ClaseDAO alloc] init];
    ClaseGrupo * cg = [cdao recuperarRecord];
    [_tfNombre setText:cg.nombre];
    [_tfGenero setText:cg.genero];
    [_tfPais setText:cg.pais];
    [_tfYear setText:[NSString stringWithFormat:@"%d", cg.year ]];
}
@end































