//
//  TablaResDS.h
//  ExamenIOS
//
//  Created by user137296 on 5/7/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Restaurante.h"
@interface TablaResDS : NSObject <UITableViewDataSource>

@property NSArray * restaurantes;

-(Restaurante *) restauranteAt: (NSInteger) pos;

@end
