//
//  ClaseGrupo.h
//  SQLiteQueNoPaseHambre
//
//  Created by user137296 on 4/23/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClaseGrupo : NSObject
@property NSInteger idGrupo;
@property NSString * nombre;
@property NSString * genero;
@property NSString * pais;
@property int year;

-(id) initConidGrupo:(NSInteger) idGrupo
              nombre:(NSString *) nombre
              genero:(NSString *) genero
                pais:(NSString *) pais
                year:(int) year;

-(id) initConNombre:(NSString *) nombre
             genero:(NSString *) genero
               pais:(NSString *) pais
               year:(int) year;
@end
