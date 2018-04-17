//
//  ViewController.m
//  Conversor
//
//  Created by user137296 on 4/17/18.
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

-(IBAction)celsiusFahrenheit:(id)sender{
    float celsius = [_tfCelsius.text floatValue];
    float fahrenheit = 1.8*celsius + 32;
    _tfFahrenheit.text = [NSString stringWithFormat:@"%f",fahrenheit];
}
-(IBAction)fahrenheitCelsius:(id)sender{
    float fahrenheit = [_tfFahrenheit.text floatValue];
    float celsius = (fahrenheit-32)/1.8;
    _tfCelsius.text = [NSString stringWithFormat:@"%f",celsius];
}

-(IBAction)kilometroMillas:(id)sender{
    float kilometro = [_tfKilometro.text floatValue];
    float millas =  kilometro * 0.621371192;
    _tfMillas.text = [NSString stringWithFormat:@"%f",millas];
}
-(IBAction)millasKilometro:(id)sender{
    float millas = [_tfMillas.text floatValue];
    float kiometro = millas / 0.621371192;
    _tfKilometro.text = [NSString stringWithFormat:@"%f",kiometro];
}


@end










