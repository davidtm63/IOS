//
//  Vista1VC.m
//  EJVistas
//
//  Created by user137296 on 4/19/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "Vista1VC.h"
#import "Vista2VC.h"
#import "AyudaVC.h"

@interface Vista1VC ()

@end

@implementation Vista1VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

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
