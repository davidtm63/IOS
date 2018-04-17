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
        
        Persona * persona1 = [[Persona alloc] initConCodigo:0 nombre:@"David" direccion:@"direccion1" telefono:@"123456" dni:@"dni1"];
        Persona * persona2 = [[Persona alloc] initConCodigo:1 nombre:@"Juan" direccion:@"direccion2" telefono:@"159357" dni:@"dni2"];
        Persona * persona3 = [[Persona alloc] initConCodigo:2 nombre:@"Pepe" direccion:@"direccion3" telefono:@"456129" dni:@"dni3"];
        Persona * persona4 = [[Persona alloc] initConCodigo:3 nombre:@"Rodrigo" direccion:@"direccion4" telefono:@"785621" dni:@"dni4"];
        Persona * persona5 = [[Persona alloc] initConCodigo:4 nombre:@"Emilio" direccion:@"direccion5" telefono:@"965274" dni:@"dni5"];
        
        NSMutableArray * array = [[NSMutableArray alloc] init];
        NSMutableDictionary * diccionario = [[NSMutableDictionary alloc] init];
        [array addObject:persona1];
        [array addObject:persona2];
        [array addObject:persona3];
        [array addObject:persona4];
        [array addObject:persona5];
        for(int i = 0;i<array.count;i++){
            Persona *ptemp = array[i];
            NSLog(@"Nombre: %@", ptemp.nombre);
            
            [diccionario setObject:ptemp forKey:ptemp.nombre];
        }
        NSLog(@"---------------");
        for(id nombre in diccionario){
            Persona * per = diccionario[nombre];
            NSLog(@"Telefono: %@", per.telefono);
        }

        
    }
    return 0;
}
