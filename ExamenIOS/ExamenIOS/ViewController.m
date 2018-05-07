//
//  ViewController.m
//  ExamenIOS
//
//  Created by user137296 on 5/7/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"
#import "MapController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _gestorRes = [[StoreRestaurante alloc] init];
    _tablaDS = [[TablaResDS alloc] init];
    [_tableRestaurantes setDataSource:_tablaDS];
    [_tableRestaurantes setDelegate:self];
}

-(void) viewWillAppear:(BOOL)animated{
    [_tablaDS setRestaurantes:[_gestorRes listarRes]];
    [_tableRestaurantes reloadData];
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    Restaurante * r = [_tablaDS restauranteAt:[indexPath row]];
    [self performSegueWithIdentifier:@"verMap" sender:r];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"verMap"]) {
        if ([sender isKindOfClass:[Restaurante class]]) {
            MapController * mc = (MapController *) [segue destinationViewController];
            [mc setRest:(Restaurante *) sender];
        }
    }
}
-(IBAction)ClickVolver:(UIStoryboardSegue *)sender{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
