//
//  Restaurante.m
//  ExamenIOS
//
//  Created by user137296 on 5/7/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "Restaurante.h"

@implementation Restaurante

-(id) initConNombre:(NSString *)nombre descripcion:(NSString *)descripcion longitud:(double)longitud latitud:(double)latitud{
    if (self == [super init]) {
        _nombre = nombre;
        _descripcion = descripcion;
        _longitud = longitud;
        _latitud = latitud;
    }
    return self;
}

@end
