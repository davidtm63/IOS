//
//  ViewController.m
//  NextPage
//
//  Created by user137296 on 4/19/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"
#import "Ventana2ViewController.h"

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

-(IBAction)botonclicker:(id)sender{
    
    [self performSegueWithIdentifier:@"Vista2" sender:nil];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //Primero miramos que el segue sea el que queremos
    if([[segue identifier] isEqualToString:@"Vista2"]){
        Ventana2ViewController * ventane2 = (Ventana2ViewController *) [segue destinationViewController];
        [ventane2 setDato:@"Estoy pasando Datos"];
    }
}
@end
