//
//  DetalleGymViewController.h
//  TutoriaApp
//
//  Created by user137296 on 5/3/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Gimnasio.h"
@interface DetalleGymViewController : UIViewController

@property Gimnasio * gimnasio;
@property IBOutlet UILabel * labelNombre;
@property IBOutlet UILabel * labelCiudad;
@property IBOutlet UILabel * labelCalle;
@property IBOutlet UILabel * labelCapacidad;

@end
