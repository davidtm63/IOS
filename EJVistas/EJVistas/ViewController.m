//
//  ViewController.m
//  EJVistas
//
//  Created by user137296 on 4/19/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"
#import "Vista2VC.h"
#import "AyudaVC.h"

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


-(IBAction)click1:(id)sender{
    [self performSegueWithIdentifier:@"Vista2" sender:nil];
}
-(IBAction)clickAyuda:(id)sender{
    [self performSegueWithIdentifier:@"Ayuda" sender:nil];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //Primero miramos que el segue sea el que queremos
    if([[segue identifier] isEqualToString:@"Vista2"]){
        //        Ventana2ViewController * ventane2 = (Ventana2ViewController *) [segue destinationViewController];
        //        [ventane2 setDato:@"Estoy pasando Datos"];
        Vista2VC * ventana2 = (Vista2VC *) [segue destinationViewController];
        [ventana2 setDato:@"Vengo de Vista1"];
        
        
    }else{
        if([[segue identifier] isEqualToString:@"Ayuda"]){
            AyudaVC * ayuda = (AyudaVC *) [segue destinationViewController];
            [ayuda setDato:@"Vengo de Vista1"];
        }
    }
}

-(IBAction)volverAControler:(UIStoryboard *) segue{
}



@end
