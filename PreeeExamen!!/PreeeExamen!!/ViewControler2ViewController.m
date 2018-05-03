//
//  ViewControler2ViewController.m
//  PreeeExamen!!
//
//  Created by user137296 on 5/2/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewControler2ViewController.h"
#import "NoMueras!!.h"
@interface ViewControler2ViewController ()

@end

@implementation ViewControler2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)ClickVolver:(id)sender{
    
    NSString * fabricante = [_tfFabricante text];
    NSString * modelo = [_tfModelo text];
    NSString * precio = [_tfPrecio text];
    NoMueras__ * muerte = [[NoMueras__ alloc] init];
    
    NSString * texto = [NSString stringWithFormat:@"%@ %@ %@",fabricante,modelo,precio];
    _Miarray = [[NSMutableArray alloc] init];
    
    if([fabricante isEqualToString:@""] || [modelo isEqualToString:@""] || [precio isEqualToString:@""] ){
        
    }else{
        [_Miarray addObject:texto];
    }
    [muerte cargar];
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
