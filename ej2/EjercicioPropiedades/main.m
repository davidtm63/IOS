//  main.m
//  EjercicioPropiedades
//
//  Created by user137296 on 4/16/18.
//  Copyright © 2018 user137296. All rights reserved.
//Users/user137296/Documents/GitHub/EjemploOS/ej2/EjercicioPropiedades.xcodeproj//

#import <Foundation/Foundation.h>
#import "Persona.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //Crear persona solo con init
        Persona * p = [[Persona alloc] init];
        p.nombre = @"David";
        p.telefono = @"456789";
        p.direccion = @"Casa la iaia";
        p.dni = @"123789G";
        NSLog(@"Codigo: %d Nombre: %@ Telefono: %@ Direccion: %@ Dni: %@",p.codigo,p.nombre,p.telefono,p.direccion,p.dni);
        
        //Crear persona con initConCodigo
        Persona * p2 = [[Persona alloc] initConCodigo:25 nombre:@"Juanjo" direccion:@"Casa ALain" telefono:@"66666" dni:@"123456F"];
        NSLog(@"Codigo: %d Nombre: %@ Telefono: %@ Direccion: %@ Dni: %@",p2.codigo,p2.nombre,p2.telefono,p2.direccion,p2.dni);

    }
    return 0;
}
