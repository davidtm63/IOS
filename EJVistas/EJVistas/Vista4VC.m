//
//  Vista4VC.m
//  EJVistas
//
//  Created by user137296 on 4/19/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "Vista4VC.h"
#import "AyudaVC.h"
@interface Vista4VC ()

@end

@implementation Vista4VC

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
-(IBAction)clickAyuda:(id)sender{
    [self performSegueWithIdentifier:@"Ayuda" sender:nil];
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"Ayuda"]){
        AyudaVC * ayuda = (AyudaVC *) [segue destinationViewController];
        [ayuda setDato:@"Vengo de Vista3"];
    }
}

-(IBAction)volverAControler4:(UIStoryboard *) segue{
}
@end
