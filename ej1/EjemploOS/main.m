//
//  main.m
//  EjemploOS
//
//  Created by user137296 on 4/12/18.
//  Copyright © 2018 user137296. All rights reserved.


#import <Foundation/Foundation.h>
#import "Cliente.h"
#import "Cliente2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, GILIPOLLAS!");
        
        //Creamos cliente2 con variables en propertys 
        Cliente2 *cp = [[Cliente2 alloc] init];
        cp.nombre = @"Diego";
        cp.codigo = 5;
        cp.direccion = @"Juan Fuster";
        cp.activo = YES;
        cp.telefono = 456789;
        
        NSLog(@"Codigo : %d Nombre %@ Direccion %@ Telefono %ld Acitvo %d" , cp.codigo, cp.nombre,cp.direccion, cp.telefono, cp.activo);
        
        //Creamos un cliente sin datos
        Cliente *c1 = [[Cliente alloc] init];
        //Creamos otros clientes con datos
        //Presentamos cliente con getDatos
        Cliente *c2 = [[Cliente alloc] initConCodigo:1 telefono:123456 activo:YES nombre:@"David" YDireccion:@"Mi casa telefono"];
        
        NSLog(@"%@", [c2 getDatos]);
        
        //Presentar cliente con getters y setters individuales
        [c1 setCodigo:2];
        [c1 setNombre:@"Pepe"];
        [c1 setDireccion:@"Casa mi abuela"];
        [c1 setTelefono:123789];
        [c1 setActivo:NO];
        NSString * res = [NSString stringWithFormat:@"Codigo:%d Telefono:%ld Nombre:%@ Direccion:%@ Activo:%d",[c1 getCodigo],[c1 getTelefono],[c1 getNombre],[c1 getDireccion],[c1 getActivo]];
        NSLog(@"%@", res);
    }
    return 0;
}
