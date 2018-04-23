//
//  ClaseDAO.m
//  SQLiteQueNoPaseHambre
//
//  Created by user137296 on 4/23/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ClaseDAO.h"
#import "ClaseGrupo.h"
#import "sqliteLoad.h"
@implementation ClaseDAO

-(BOOL) insertarRecord:(ClaseGrupo *)grupo
                 error:(NSError *__autoreleasing *)error{
    sqliteLoad * ssql = [[sqliteLoad alloc] init];
    sqlite3 * bbdd =[ssql bbdd];
    NSString * txt = @"insert into CLASEGRUPO (NOMBRE,GENERO,PAIS,YEAR) values (?,?,?,?)";
    if(_qureyInsert == nil){
        sqlite3_prepare_v2(bbdd, [txt UTF8String], -1, &_qureyInsert, nil);
    }
    sqlite3_bind_text(_qureyInsert, 1, [[grupo nombre] UTF8String], -1, SQLITE_TRANSIENT);
    sqlite3_bind_text(_qureyInsert, 2, [[grupo genero] UTF8String], -1, SQLITE_TRANSIENT);
    sqlite3_bind_text(_qureyInsert, 3, [[grupo pais] UTF8String], -1, SQLITE_TRANSIENT);
    sqlite3_bind_int64(_qureyInsert, 4, [grupo year]);
    
    int codigo = sqlite3_step(_qureyInsert);
    sqlite3_reset(_qureyInsert);
    return YES;
}

-(ClaseGrupo *) recuperarRecord{
    sqliteLoad * ssql = [[sqliteLoad alloc] init];
    sqlite3 * bbdd = [ssql bbdd];
    NSString * txt = @"select * from CLASEGRUPO WHERE id = ?";
    if(_qureyInsert == nil){
        sqlite3_prepare_v2(bbdd, [txt UTF8String], -1, &_qureyInsert, nil);
    }
    sqlite3_bind_int64(_qureyInsert, 1, 4);
    ClaseGrupo * rec = nil;
    if(sqlite3_step(_qureyInsert) == SQLITE_ROW){
        NSString * nombre = [NSString stringWithUTF8String:(const char *)sqlite3_column_text(_qureyInsert, 1)];
         NSString * genero = [NSString stringWithUTF8String:(const char *)sqlite3_column_text(_qureyInsert, 2)];
        NSString * pais = [NSString stringWithUTF8String:(const char *)sqlite3_column_text(_qureyInsert, 3)];
         NSString * year = [NSString stringWithUTF8String:(const char *)sqlite3_column_text(_qureyInsert, 4)];
        rec = [[ClaseGrupo alloc] initConNombre:nombre genero:genero pais:pais year:[year intValue]];
        sqlite3_reset(_qureyInsert);
    }
    return rec;
}

@end












