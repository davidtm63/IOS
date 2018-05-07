//
//  TablaResDS.m
//  ExamenIOS
//
//  Created by user137296 on 5/7/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "TablaResDS.h"

@implementation TablaResDS

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_restaurantes count];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString * idCelda = @"celdaRes";
    UITableViewCell * celda = [tableView dequeueReusableCellWithIdentifier:idCelda];
    if(celda == nil){
        celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCelda];
    }
    NSInteger fila = [indexPath row];
    Restaurante * res = [_restaurantes objectAtIndex:fila];
    [[celda textLabel] setText:[res nombre]];
    return celda;
}

- (Restaurante *)restauranteAt:(NSInteger)pos{
    return (Restaurante *) [_restaurantes objectAtIndex:pos];
}
@end
