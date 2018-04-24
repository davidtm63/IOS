//
//  TablaDS.h
//  SQliteEjemplo
//
//  Created by user137296 on 4/24/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ClasePrueba.h"
@interface TablaDS :
    NSObject <UITableViewDataSource>

@property NSArray * pruebas;

-(ClasePrueba *) pruebaAt: (NSInteger) pos;

@end
