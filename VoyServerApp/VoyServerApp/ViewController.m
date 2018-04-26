//
//  ViewController.m
//  VoyServerApp
//
//  Created by user137296 on 4/26/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)cargarDatos:(id)sender{
    //Primero creamos la llamada a la API
    NSURL * url = [NSURL URLWithString:@"https://jsonplaceholder.typicode.com/posts/1"];
    NSError * error;
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSHTTPURLResponse * respuesta; // Al no poner nada se esta iniciando a nil
    NSData * datos = [NSURLConnection sendSynchronousRequest:request returningResponse:&respuesta error:&error];
    NSArray * array = [NSJSONSerialization JSONObjectWithData : datos options : 0 error : nil ];
    //NSMutableArray * arDatos = [[NSMutableArray alloc] init];
    for (int i = 0; i < [array count];i++){
        NSDictionary * d = (NSString *) [array objectAtIndex:i];
        [_texto setText:[d objectForKey:@"title"]];
    }
}

@end
