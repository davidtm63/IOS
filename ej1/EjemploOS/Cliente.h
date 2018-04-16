
//  Cliente.h
//  EjemploOS
//
//  Created by user137296 on 4/12/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cliente : NSObject
//IVARS (Atributos)
{
@public //Si no indicamos, nada las IVARS son protected
int _codigo;//Entero
long _telefono;//Entero largo
char _letra;//Caracter
BOOL _activo;//Boleano

NSString *_nombre;//String
NSString *_direccion;//String
}

//Creamos el inicializador
-(id) initConCodigo:(int) codigo
           telefono:(long) telefono
             activo:(BOOL) activo
             nombre:(NSString *) nombre
         YDireccion:(NSString *) direccion;

-(void) saltar;//Funcion que no recive nada y no envia nada

-(NSString *) getDatos;//Funcion que no recibe parametros y devuelve un String

-(void) setCodigo: (int)Codigo;
-(void) setTelefono: (long)Telefono;
-(void) setActivo: (BOOL)Activo;
-(void) setNombre: (NSString *)Nombre;
-(void) setDireccion: (NSString *)Direccion;

-(int) getCodigo;
-(long) getTelefono;
-(BOOL) getActivo;
-(NSString *) getNombre;
-(NSString *) getDireccion;

@end
