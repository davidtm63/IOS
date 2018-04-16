//
//  Persona.m
//  EjercicioPropiedades
//
//  Created by user137296 on 4/16/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "Persona.h"

@implementation Persona
@synthesize telefono = _numTelefono, nombre = _nombre;

- (id)initConCodigo:(int)codigo nombre:(NSString *)nombre direccion:(NSString *)direccion telefono:(NSString *)telefono dni:(NSString *)dni{
    if (self = [super init]){
        _codigo = codigo;
        [self setNombre:nombre];
        _direccion = direccion;
        _numTelefono = telefono;
        _dni = dni;
    }
    return self;
}




-(NSString *)nombre{
    return _nombre;
}
-(void) setNombre:(NSString *)nombre{
    _nombre = [nombre uppercaseString];
}

@end
