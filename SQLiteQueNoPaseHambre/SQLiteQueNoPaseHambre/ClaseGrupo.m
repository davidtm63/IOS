//
//  ClaseGrupo.m
//  SQLiteQueNoPaseHambre
//
//  Created by user137296 on 4/23/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ClaseGrupo.h"

@implementation ClaseGrupo

-(id) initConidGrupo:(NSInteger)idGrupo nombre:(NSString *)nombre genero:(NSString *)genero pais:(NSString *)pais year:(int)year{
    if(self = [super init]){
        _nombre = nombre;
        _genero = genero;
        _pais = pais;
        _year = year;
    }
    return self;
}

-(id) initConNombre:(NSString *)nombre genero:(NSString *)genero pais:(NSString *)pais year:(int)year{
    if(self = [super init]){
        _nombre = nombre;
        _genero = genero;
        _pais = pais;
        _year = year;
    }
    return self;
}
@end
