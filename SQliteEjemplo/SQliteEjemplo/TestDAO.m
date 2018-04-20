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
    sqlite3 * bbdd = [[sqliteLoad init] bbdd];
    NSString * txt = @"insert into CLASEPRUEBA (NOMBRE,PAIS) values (?,?);";
      
}

@end
