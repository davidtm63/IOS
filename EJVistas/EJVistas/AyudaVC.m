//
//  AyudaVC.m
//  EJVistas
//
//  Created by user137296 on 4/19/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "AyudaVC.h"

@interface AyudaVC ()

@end

@implementation AyudaVC

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
    if([_dato isEqualToString:@"Vengo de Vista1"]){
    [self performSegueWithIdentifier:@"Vista1" sender:nil];
    }
    if([_dato isEqualToString:@"Vengo de Vista2"]){
        [self performSegueWithIdentifier:@"Vista2" sender:nil];
    }
    if([_dato isEqualToString:@"Vengo de Vista3"]){
        [self performSegueWithIdentifier:@"Vista3" sender:nil];
    }
    if([_dato isEqualToString:@"Vengo de Vista4"]){
        [self performSegueWithIdentifier:@"Vista4" sender:nil];
    }
}
@end
