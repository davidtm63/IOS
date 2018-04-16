//
//  Persona.h
//  EjercicioPropiedades
//
//  Created by user137296 on 4/16/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Persona : NSObject
{
    NSString * _numTelefono;
}
@property (readonly) int codigo;
@property NSString * nombre;
@property NSString * direccion;
@property NSString * telefono;
@property NSString * dni;

//-(NSString *) getDatos;

-(id) initConCodigo:(int) codigo
             nombre:(NSString *) nombre
          direccion:(NSString *) direccion
           telefono:(NSString *) telefono
                dni:(NSString *) dni;



@end
