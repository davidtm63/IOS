//
//  TablaDS.m
//  SQLiteQueNoPaseHambre
//
//  Created by user137296 on 4/24/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "TablaDS.h"

@implementation TablaDS

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString * idCeldaPrueba = @"celdaPrueba";
    UITableViewCell * celda = [tableView dequeueReusableCellWithIdentifier:idCeldaPrueba];
    if (celda == nil){
        celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCeldaPrueba];
    }
    NSInteger fila = [indexPath row];
    ClaseGrupo * cg = [_pruebas objectAtIndex:fila];
    NSString * grupo = [NSString stringWithFormat:@"%@ %@ %@ %d",[cg nombre],[cg genero],[cg pais],[cg year]];
    [[celda textLabel] setText:grupo];
    return celda;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_pruebas count];
}

-(ClaseGrupo *) pruebaAT:(NSInteger)pos{
    return (ClaseGrupo *) [_pruebas objectAtIndex:pos];
}
@end
