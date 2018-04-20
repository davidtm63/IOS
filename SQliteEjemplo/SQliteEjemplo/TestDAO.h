//
//  TestDAO.h
//  SQliteEjemplo
//
//  Created by user137296 on 4/20/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
#import "ClasePrueba.h"
@interface TestDAO : NSObject
{
    @private
    sqlite3_stmt * _queryInsert;
}

-(BOOL) insertarRecord:(ClasePrueba *) prueba
                 error:(NSError **)error;
@end
