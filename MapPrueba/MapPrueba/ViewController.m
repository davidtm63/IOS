//
//  ViewController.m
//  MapPrueba
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
    _min = -180;
    _max = 180;
    //Centrar el mapa en la posocion que le digamos
    CLLocationCoordinate2D location;
    location.latitude =  41.21836;
    location.longitude = 1.671284;
    // Creamos una region dcentrada en las coordinadas
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 5000, 5000);
    //Le pasamos lq region al mapa
    [_mapa setRegion:region animated:NO];
    //Vamos a añadir un marcer al mapa
    CLLocationCoordinate2D location2 = CLLocationCoordinate2DMake(41.21836, 1.671284);
    MKPointAnnotation * macador = [[MKPointAnnotation alloc] init];
    //Al marcador le pondremos una posicion, un titulo y uhn subtitulo
    [macador setCoordinate:location2];
    [macador setTitle:@"Titulo"];
    [macador setSubtitle:@"Subtitulo"];
    //Añadimos el marcador al mapa
    [_mapa addAnnotation:macador];
    //NSUInteger r = arc4random_uniform(180) + 1;
}

-(IBAction)random:(id)sender{
    _longitud = _min + arc4random_uniform(_max - _min + 1);
    _latitud =_min + arc4random_uniform(_max - _min + 1);
    MKPointAnnotation * macador2 = [[MKPointAnnotation alloc] init];
    
    CLLocationCoordinate2D locationRandom = CLLocationCoordinate2DMake(_latitud, _longitud);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(locationRandom, 5000, 5000);
    [macador2 setCoordinate:locationRandom];
    [macador2 setTitle:@"Titulo"];
    [macador2 setSubtitle:@"Subtitulo"];

    [_mapa addAnnotation:macador2];
    
    [_mapa setRegion:region animated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
