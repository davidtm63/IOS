//
//  ViewController.h
//  ServerProject
//
//  Created by user137296 on 4/26/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TablaDS.h"

@interface ViewController : UIViewController

{
    TablaDS * _tablaDS;
}

@property IBOutlet UITableView * tableView;

@end

