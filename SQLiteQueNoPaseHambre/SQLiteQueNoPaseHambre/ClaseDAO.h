//
//  ClaseDAO.h
//  SQLiteQueNoPaseHambre
//
//  Created by user137296 on 4/23/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "ClaseGrupo.h"
@interface ClaseDAO : NSObject
{
    @private
    sqlite3_stmt * _qureyInsert;
}

-(BOOL) insertarRecord:(ClaseGrupo *) grupo
                 error:(NSError **) error;

-(ClaseGrupo *) recuperarRecord;
@end
