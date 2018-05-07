//
//  StoreGym.m
//  TutoriaApp
//
//  Created by user137296 on 5/3/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "StoreGym.h"
#import "Gimnasio.h"
@implementation StoreGym

- (NSArray *)listarGym{
    Gimnasio * g1 = [[Gimnasio alloc] initConNombre:@"Spartaco" ciudad:@"Topotamadre" calle:@"Juanjo" capacidad:300];
    Gimnasio * g2 = [[Gimnasio alloc] initConNombre:@"AquaGym" ciudad:@"BCN" calle:@"Pepe" capacidad:200];
    Gimnasio * g3 = [[Gimnasio alloc] initConNombre:@"FitnesParck" ciudad:@"VAL" calle:@"Juan" capacidad:150];
    Gimnasio * g4 = [[Gimnasio alloc] initConNombre:@"WI WAN YUU" ciudad:@"CN" calle:@"Carlos" capacidad:50];
    NSArray * lista = [NSArray arrayWithObjects:g1,g2,g3,g4,nil];
    return lista;
}

@end

