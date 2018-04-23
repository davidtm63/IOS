//
//  sqliteLoad.m
//  SQLiteQueNoPaseHambre
//
//  Created by user137296 on 4/23/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "sqliteLoad.h"

@implementation sqliteLoad

-(id) init{
        if(self = [super init]){
            NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
            NSString * direDocumentos = [paths objectAtIndex:0];
            NSString * path = [direDocumentos stringByAppendingPathComponent:@"bbdd.sqlite"];
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
