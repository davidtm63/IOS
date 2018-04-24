//
//  ViewController.h
//  SQliteEjemplo
//
//  Created by user137296 on 4/20/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TablaDS.h"
@interface ViewController : UIViewController

{
    TablaDS * _tablaDS;
}

@property IBOutlet UITextField * tfNombre;
@property IBOutlet UITextField * tfPais;
@property IBOutlet UITableView * tablePrueba;

@end

