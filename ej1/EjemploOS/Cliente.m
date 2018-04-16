
//  Cliente.m
//  EjemploOS
//
//  Created by user137296 on 4/12/18.
//  Copyright © 2018 user137296. All rights reserved.


#import "Cliente.h"

@implementation Cliente

//Inicializador por defecto
-(id) init {
    if(self = [super init]){
        NSLog(@"Init");
        //Aqui podemos inicializar los valores, sino se inician a 0 y los punteros a (null)
    }
    return self;//Devolvemos el objeto creado
}

//Creamos el inicializador que hemos definido en el .h
-(id) initConCodigo:(int)codigo
           telefono:(long)telefono
             activo:(BOOL)activo
             nombre:(NSString *)nombre
         YDireccion:(NSString *)direccion{
        if(self = [super init]){
            _codigo = codigo;
            _telefono = telefono;
            _activo = activo;
            _nombre = nombre;
            _direccion = direccion;
    }
    return self;
}

-(void) saltar{
    NSLog(@"Mi nombre es %@ y estoy saltando",_nombre);
}

-(NSString *) getDatos{
    NSString *str = [NSString stringWithFormat:@"Codigo:%d Telefono:%ld Nombre:%@ Direccion:%@ Activo:%d" ,_codigo,_telefono,_nombre,_direccion, _activo];
    return str;
}

-(void) setCodigo:(int)Codigo{
    _codigo = Codigo;
}

-(int) getCodigo{
    return _codigo;
}

-(void) setTelefono:(long)Telefono{
    _telefono = Telefono;
}
-(long) getTelefono{
    return _telefono;
}

-(void) setActivo:(BOOL)Activo{
    _activo = Activo;
}
-(BOOL) getActivo{
    return _activo;
}

-(void) setNombre:(NSString *)Nombre{
    _nombre = Nombre;
}
-(NSString *)getNombre{
    return _nombre;
}

-(void) setDireccion:(NSString *)Direccion{
    _direccion = Direccion;
}
-(NSString *) getDireccion{
    return _direccion;
}

@end
