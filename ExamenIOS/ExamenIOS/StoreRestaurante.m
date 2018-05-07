//
//  StoreRestaurante.m
//  ExamenIOS
//
//  Created by user137296 on 5/7/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "StoreRestaurante.h"
#import "Restaurante.h"
@implementation StoreRestaurante

-(NSArray *) listarRes{
    Restaurante * r1 =[[Restaurante alloc] initConNombre:@"restaurante1"descripcion:@"desc1" longitud:40 latitud:50];
    Restaurante * r2 =[[Restaurante alloc] initConNombre:@"restaurante2"descripcion:@"desc2" longitud:20 latitud:60];
    Restaurante * r3 =[[Restaurante alloc] initConNombre:@"restaurante3"descripcion:@"desc3" longitud:30 latitud:70];
    Restaurante * r4 =[[Restaurante alloc] initConNombre:@"restaurante4"descripcion:@"desc4" longitud:60 latitud:20];
    Restaurante * r5 =[[Restaurante alloc] initConNombre:@"restaurante5"descripcion:@"desc5" longitud:80 latitud:90];
    Restaurante * r6 =[[Restaurante alloc] initConNombre:@"restaurante6"descripcion:@"desc6" longitud:100 latitud:55];
    NSArray * lista = [NSArray arrayWithObjects:r1,r2,r3,r4,r5,r6, nil];
    return lista;
}

@end
