//
//  TablaGymDS.m
//  TutoriaApp
//
//  Created by user137296 on 5/3/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "TablaGymDS.h"

@implementation TablaGymDS

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_gimnasios count];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString * idCelda = @"celdaGym";
    UITableViewCell * celda = [tableView dequeueReusableCellWithIdentifier:idCelda];
    if(celda == nil){
        celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCelda];
    }
    NSInteger fila = [indexPath row];
    Gimnasio * gim = [_gimnasios objectAtIndex:fila];
    [[celda textLabel] setText:[gim nombre]];
    return celda;
}

-(Gimnasio *)gimnasioAT:(NSInteger)pos{
    return (Gimnasio *) [_gimnasios objectAtIndex:pos];
}

@end

