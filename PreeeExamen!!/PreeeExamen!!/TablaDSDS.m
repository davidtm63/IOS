//
//  TablaDSDS.m
//  PreeeExamen!!
//
//  Created by user137296 on 5/2/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "TablaDSDS.h"

@implementation TablaDSDS

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    static NSString * idCelda = @"celda";
    UITableViewCell * celda = [tableView dequeueReusableCellWithIdentifier:idCelda];
    if(celda == nil){
        celda = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idCelda];
    }
    NSInteger fila = [indexPath row];
    NSString * txt = [_datos objectAtIndex:fila];
    [[celda textLabel] setText:txt];
    return nil;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return[_datos count];
}

@end
