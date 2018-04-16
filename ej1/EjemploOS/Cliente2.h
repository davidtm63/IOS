//
//  Cliente2.h
//  EjemploOS
//
//  Created by user137296 on 4/16/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cliente2 : NSObject

@property NSString *nombre;
@property int codigo;
@property NSString *direccion;
@property long telefono;
@property char letra;
@property BOOL activo;

-(id) initConCodigo:(int) codigo
           telefono:(long) telefono
             activo:(BOOL) activo
              letra:(char) letra
             nombre:(NSString *) nombre
         YDireccion:(NSString *) direccion;

@end
