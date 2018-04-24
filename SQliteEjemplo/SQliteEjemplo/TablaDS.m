
//  TablaDS.m
//  SQliteEjemplo
//
//  Created by user137296 on 4/24/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "TablaDS.h"

@implementation TablaDS


//Es la que determina que celda va en cada posicion
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    //Creamos un id para las celdas
    static NSString * idCeldaPrueba = @"celdaPrueba";
    //Miramos sio existe una celda que este creada que podamos utilizar
    UITableViewCell * celda = [tableView dequeueReusableCellWithIdentifier:idCeldaPrueba];
    //En caso que no haya una celda disponible, creamos una
    if(celda == nil){
        celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCeldaPrueba];
    }
    //Preguntamos en la fila en la que estamos
    NSInteger fila = [indexPath row];
    //Buscamos dentro del array
    ClasePrueba * cp = [_pruebas objectAtIndex:fila];
    //Ponemos el nombre en la celda
    [[celda textLabel] setText:[cp nombre]];
    //Devolvemos la celda
    return celda;
}

//Es una funcion que pregunta el numero de filas que tiene la talba
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //Devolvemos la longitud del array
    return [_pruebas count];
}

-(ClasePrueba *) pruebaAt:(NSInteger)pos{
    return  (ClasePrueba *) [_pruebas objectAtIndex:pos];
}

@end
