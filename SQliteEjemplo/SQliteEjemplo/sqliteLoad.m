//
//  sqliteLoad.m
//  SQliteEjemplo
//
//  Created by user137296 on 4/20/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "sqliteLoad.h"

@implementation sqliteLoad


-(id) init{
    if(self = [super init]){
        //Buscazmos el path de la base de datos
        NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString * directorioDocumentos = [paths objectAtIndex:0];
        NSString * path = [ directorioDocumentos stringByAppendingPathComponent:@"bbdd.sqlite"];
        //Abrimos la base de datos
        if(sqlite3_open_v2([path UTF8String], &_bbdd, SQLITE_OPEN_READWRITE, nil) != SQLITE_OK ){
            NSException * ex = [[NSException alloc]initWithName:@"Excepcion BBDD" reason:@"Error al abrir BBDD" userInfo:nil];
            @throw ex;
            
        }
    }
    return self;
}

-(void) dealloc{
    sqlite3_close(_bbdd);
}

@end
