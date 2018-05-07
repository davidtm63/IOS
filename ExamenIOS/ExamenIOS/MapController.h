//
//  MapController.h
//  ExamenIOS
//
//  Created by user137296 on 5/7/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Restaurante.h"
#import <MapKit/MapKit.h>
@interface MapController : UIViewController

@property Restaurante * rest;
@property IBOutlet MKMapView * mapa;
@property IBOutlet UILabel * labelNombre;
@property IBOutlet UILabel * labelDesc;
@property NSUInteger longitud;
@property NSUInteger latitud;

@end
