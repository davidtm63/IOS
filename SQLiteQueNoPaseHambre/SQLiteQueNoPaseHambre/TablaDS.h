//
//  TablaDS.h
//  SQLiteQueNoPaseHambre
//
//  Created by user137296 on 4/24/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ClaseGrupo.h"

@interface TablaDS : NSObject <UITableViewDataSource>

@property NSArray * pruebas;

-(ClaseGrupo *) pruebaAT : (NSInteger) pos;

@end
