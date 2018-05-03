//
//  DetalleGymViewController.m
//  TutoriaApp
//
//  Created by user137296 on 5/3/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "DetalleGymViewController.h"

@interface DetalleGymViewController ()

@end

@implementation DetalleGymViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) viewWillAppear:(BOOL)animated{
    _labelNombre.text = _gimnasio.nombre;
    _labelCiudad.text = _gimnasio.ciudad;
    _labelCalle.text = _gimnasio.calle;
    _labelCapacidad.text = [NSString stringWithFormat:@"%d" ,_gimnasio.capacidad ];
    
}

@end
