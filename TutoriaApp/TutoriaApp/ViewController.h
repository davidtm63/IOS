//
//  ViewController.h
//  TutoriaApp
//
//  Created by user137296 on 5/3/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TablaGymDS.h"
#import "StoreGym.h"

@interface ViewController : UIViewController <UITableViewDelegate>

{
    TablaGymDS * _tablaDS;
    StoreGym * _gestorGyms;
}

@property IBOutlet UITableView * tableGimnasios;

@end

