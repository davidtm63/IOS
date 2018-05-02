//
//  TablaDS.m
//  ServerProject
//
//  Created by user137296 on 4/26/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "TablaDS.h"

@implementation TablaDS

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    static NSString * idCelda = @"celda";
    UITableViewCell * celda = [tableView dequeueReusableCellWithIdentifier:idCelda];
    if (celda == nil){
        celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCelda];
    }
    NSInteger fila = [indexPath row];
    NSString *txt = [_datos objectAtIndex:fila];
    [[celda textLabel] setText:txt];
    
    return nil;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_datos count];
}


@end
//- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    static NSString * idCeldaPrueba = @"celdaPrueba";
//    UITableViewCell * celda = [tableView dequeueReusableCellWithIdentifier:idCeldaPrueba];
//    if (celda == nil){
//        celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCeldaPrueba];
//    }
//    NSInteger fila = [indexPath row];
//    ClaseGrupo * cg = [_pruebas objectAtIndex:fila];
//    NSString * grupo = [NSString stringWithFormat:@"%@ %@ %@ %d",[cg nombre],[cg genero],[cg pais],[cg year]];
//    [[celda textLabel] setText:grupo];
//    return celda;
//}
