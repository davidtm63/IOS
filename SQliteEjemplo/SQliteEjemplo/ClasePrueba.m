//
//  ClasePrueba.m
//  SQliteEjemplo
//
//  Created by user137296 on 4/20/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ClasePrueba.h"

@implementation ClasePrueba

-(id) initConNombre:(NSString *)nombre pais:(NSString *)pais{
    if(self = [super init]){
        _nombre = nombre;
        _pais = pais;
    }
    return self;
}

-(id) initConId:(NSInteger)idClasePrueba nombre:(NSString *)nombre pais:(NSString *)pais{
    if(self = [super init]){
        _idClasePrueba = idClasePrueba;
        _nombre = nombre;
        _pais = pais;
    }
    return self;
}

@end
