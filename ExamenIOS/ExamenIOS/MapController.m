//
//  MapController.m
//  ExamenIOS
//
//  Created by user137296 on 5/7/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "MapController.h"

@interface MapController ()

@end

@implementation MapController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CLLocationCoordinate2D location;
    location.longitude = _rest.longitud;
    location.latitude = _rest.latitud;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 5000, 5000);
    [_mapa setRegion:region animated:NO];
    MKPointAnnotation * marcador = [[MKPointAnnotation alloc] init];
    [marcador setCoordinate:location];
    [marcador setTitle:_rest.nombre];
    [_mapa addAnnotation:marcador];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) viewWillAppear:(BOOL)animated{
    _labelNombre.text = _rest.nombre;
    _labelDesc.text = _rest.description;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
