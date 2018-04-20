//
//  ClasePrueba.h
//  SQliteEjemplo
//
//  Created by user137296 on 4/20/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClasePrueba : NSObject
@property NSInteger idClasePrueba;
@property NSString * nombre;
@property NSString * pais;

-(id) initConNombre:(NSString *) nombre
               pais:(NSString *) pais;

-(id) initConId:(NSInteger) idClasePrueba
         nombre:(NSString *) nombre
           pais:(NSString *) pais;
@end
