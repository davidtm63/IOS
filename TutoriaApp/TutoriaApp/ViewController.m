//
//  ViewController.m
//  TutoriaApp
//
//  Created by user137296 on 5/3/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"
#import "DetalleGymViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _gestorGyms = [[StoreGym alloc] init];
    _tablaDS = [[TablaGymDS alloc] init];
    [_tableGimnasios setDataSource:_tablaDS];
    [_tableGimnasios setDelegate:self];
}

-(void) viewWillAppear:(BOOL)animated{
    [_tablaDS setGimnasios : [_gestorGyms listarGym]];
    [_tableGimnasios reloadData];
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Gimnasio * g = [_tablaDS gimnasioAT:[indexPath row]];
    [self performSegueWithIdentifier:@"verDetalle" sender:g];
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"verDetalle"]){
        if([sender isKindOfClass:[Gimnasio class]]){
            DetalleGymViewController * dg = (DetalleGymViewController *) [segue destinationViewController];
            [dg setGimnasio:(Gimnasio *) sender];
        }
    }
}

-(IBAction)ClickVolver:(UIStoryboardSegue *) segue{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
