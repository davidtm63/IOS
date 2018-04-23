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
@end
