//
//  ViewController.h
//  ExamenIOS
//
//  Created by user137296 on 5/7/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TablaResDS.h"
#import "StoreRestaurante.h"
@interface ViewController : UIViewController <UITableViewDelegate>

{
    TablaResDS * _tablaDS;
    StoreRestaurante * _gestorRes;
}

@property IBOutlet UITableView * tableRestaurantes;

@end

