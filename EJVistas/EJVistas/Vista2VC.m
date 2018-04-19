//
//  Vista2VC.m
//  EJVistas
//
//  Created by user137296 on 4/19/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "Vista2VC.h"
#import "Vista1VC.h"
#import "Vista3VC.h"
#import "AyudaVC.h"
@interface Vista2VC ()

@end

@implementation Vista2VC

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
-(IBAction)clickVista1:(id)sender{
    [self performSegueWithIdentifier:@"Vista1" sender:nil];
}
-(IBAction)clickVista3:(id)sender{
    [self performSegueWithIdentifier:@"Vista3" sender:nil];
}
-(IBAction)clickAyuda:(id)sender{
    [self performSegueWithIdentifier:@"Ayuda" sender:nil];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"Vista1"]){
        Vista1VC * vista1 = (Vista1VC *) [segue destinationViewController];
        [vista1 setDato:@"Vengo de Vista2"];
    }else
        if([[segue identifier] isEqualToString:@"Vista3"]){
            Vista3VC * vista3 = (Vista3VC *) [segue destinationViewController];
            [vista3 setDato:@"Vengo de Vista2"];
        }else
            if([[segue identifier] isEqualToString:@"Ayuda"]){
                AyudaVC * ayuda = (AyudaVC *) [segue destinationViewController];
                [ayuda setDato:@"Vengo de Vista2"];
            }
}

-(IBAction)volverAControler2:(UIStoryboard *) segue{
}

@end


















