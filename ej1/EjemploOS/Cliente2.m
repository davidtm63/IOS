//
//  Cliente2.m
//  EjemploOS
//
//  Created by user137296 on 4/16/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "Cliente2.h"

@implementation Cliente2

-(id) initConCodigo:(int)codigo
           telefono:(long)telefono
             activo:(BOOL)activo
              letra:(char) letra
             nombre:(NSString *)nombre
         YDireccion:(NSString *)direccion{
    if(self = [super init]){
        _codigo = codigo;
        _telefono = telefono;
        _activo = activo;
        _letra = letra;
        _nombre = nombre;
        _direccion = direccion;
    }
    return self;
}

@end
