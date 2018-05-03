//
//  TablaGymDS.h
//  TutoriaApp
//
//  Created by user137296 on 5/3/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Gimnasio.h"
@interface TablaGymDS : NSObject <UITableViewDataSource>

@property NSArray * gimnasios;

-(Gimnasio *) gimnasioAT : (NSInteger) pos;
    

@end
