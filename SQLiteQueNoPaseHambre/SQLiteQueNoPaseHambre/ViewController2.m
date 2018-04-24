//
//  ViewController2.m
//  SQLiteQueNoPaseHambre
//
//  Created by user137296 on 4/24/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController2.h"
#import "ClaseDAO.h"
#import "ClaseGrupo.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tablaDS = [[TablaDS alloc] init];
    [_tablePrueba setDataSource:_tablaDS];
}

-(void) viewWillAppear:(BOOL)animated{
    ClaseDAO * cd = [[ClaseDAO alloc] init];
    NSError * error;
    [_tablaDS setPruebas:[cd listarPruebas:&error]];
    [_tablePrueba reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
