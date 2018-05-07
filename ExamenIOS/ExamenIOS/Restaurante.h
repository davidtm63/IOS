//
//  Restaurante.h
//  ExamenIOS
//
//  Created by user137296 on 5/7/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Restaurante : NSObject

@property NSString * nombre;
@property NSString * descripcion;
@property double longitud;
@property double latitud;

-(id) initConNombre:(NSString *) nombre
        descripcion:(NSString *) descripcion
           longitud:(double) longitud
            latitud:(double) latitud;

@end
