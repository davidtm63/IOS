//
//  ViewController.h
//  MapPrueba
//
//  Created by user137296 on 4/25/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController

@property IBOutlet MKMapView * mapa;
@property NSUInteger  longitud;
@property NSUInteger  latitud;
@property int min;
@property int max;
@end

