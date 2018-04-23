//
//  TestDAO.m
//  SQliteEjemplo
//
//  Created by user137296 on 4/20/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "TestDAO.h"
#import "ClasePrueba.h"
#import "sqliteLoad.h"
@implementation TestDAO

-(BOOL) insertarRecord:(ClasePrueba *) prueba
                 error:(NSError **)error{
    sqliteLoad * ssql = [[sqliteLoad alloc] init];
    sqlite3 * bbdd = [ssql bbdd];
//    sqlite3 * bbdd = [[sqliteLoad init] bbdd];
    NSString * txt = @"insert into CLASEPRUEBA (NOMBRE , PAIS) values (?,?);";
    //Preparamos la consulta
    if(_queryInsert == nil){
        sqlite3_prepare_v2(bbdd, [txt UTF8String], -1, &_queryInsert, nil);
    }
    //Una vez preparada la consulta la tenemos que sustituir los interrogantes por los valores que tocan
    //Primer interrogante
    sqlite3_bind_text(_queryInsert,//La consulta que tenemos
                      1,//Primer interrogante de la consulta
                      [[prueba nombre] UTF8String],//El valor por el que queremos substituir el ?
                      -1,//Longitud maxima (-1 sin limite)
                      SQLITE_TRANSIENT);//Normalmente utilizamos este, que hace una copia del valor que estamos pasando
    //Segundo interrogante
    sqlite3_bind_text(_queryInsert, 2, [[prueba pais]UTF8String], -1, SQLITE_TRANSIENT);
    //Ejecutamos la consulta - Utilizamos la funcion sqlite_step
    //El entero que devuelve es un codigo, que puede ser de error, o bien de exito
    int codigo = sqlite3_step(_queryInsert);
    //Reseteamos la consulta (statment) despues de ejecutarla
    sqlite3_reset(_queryInsert);
    
    return YES;
}

@end
