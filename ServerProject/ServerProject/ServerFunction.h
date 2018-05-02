//
//  ServerFunction.h
//  ServerProject
//
//  Created by user137296 on 4/26/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ServerFunction : NSObject
@property NSString * userID;
@property NSString * title;
@property NSString * body;

-(void) guradarDatos:(NSString *) userID
               title:(NSString *) title
                body:(NSString *) body;
-(NSArray *) cargarDatos;
@end
