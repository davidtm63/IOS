//
//  Gimnasio.m
//  TutoriaApp
//
//  Created by user137296 on 5/3/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "Gimnasio.h"

@implementation Gimnasio

- (id)initConNombre:(NSString *)nombre ciudad:(NSString *)ciudad calle:(NSString *)calle capacidad:(int)capacidad{
    if( self == [super init]){
        _nombre = nombre;
        _ciudad = ciudad;
        _calle = calle;
        _capacidad = capacidad;
    }
    return self;
}

@end
