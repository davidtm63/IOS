//
//  ViewController.m
//  CalculadoraIOS
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

// COGEMOS EL NUM
-(IBAction) numberPressed:(UIButton *)sender {
    NSString *number = sender.currentTitle;
    if (self.typingNumber) {
        self.calculatorDisplay.text = [self.calculatorDisplay.text
                                       stringByAppendingString:number];
    } else {
        self.calculatorDisplay.text = number;
        self.typingNumber = YES;
    }
}
// COGEMOS EL TIPO DE CALCULO
-(IBAction)calculationPressed:(id)sender {
    self.typingNumber = NO;
    self.firstNumber = [self.calculatorDisplay.text doubleValue];
    self.operation = [sender currentTitle];
}
// HACEMOS EL CALCULO CUANDO APRETE AL IGUAL
-(IBAction)equalsPressed:(id)sender {
    self.typingNumber = NO;
    self.secondNumber = [self.calculatorDisplay.text doubleValue];
    
    double result = 0;
    
    if ([self.operation isEqualToString:@"+"]) {
        result = self.firstNumber + self.secondNumber;
    } else if ([self.operation isEqualToString:@"-"]) {
        result = self.firstNumber - self.secondNumber;
    } else if ([self.operation isEqualToString:@"/"]) {
        result = self.firstNumber / self.secondNumber;
    } else if ([self.operation isEqualToString:@"*"]) {
        result = self.firstNumber * self.secondNumber;
    }
    
    self.calculatorDisplay.text = [NSString stringWithFormat:@"%f", result];
    
}

@end
//profe style
// double_operando1;
// NSString *_operador;
// BOOL _punto;
// -(IBAction) botonNumerico:(id) sender {
//      UIButton *boton = (UIButton * ) sender;
//      NSString *txt = [ boton  titleForState:UIcontrolStateNormal ];
//      NSString *txtDisplay = [ _display textJ];
//      if ([ txtDisplay isEqualToString:@"0"]) {
//          textDisplay = @" ";
//      }
//      NSString *numero = [NSString stringWithFormat:@"%@%@", txtDisplay, txt];
//      [ _display setText:numero];
//}
//-(IBAction)btonOperacion:(id)sender{
//      UIButton *boton = (UIButton *) sender;
//      NSString *txt = [boton titleForState:UIControlStateNormal ];
//      _operando = [[_display textJ doubleValue];
//      [ _display setText:@"0"];
//      _operador = txt;
//      _punto = NO;
//}
//-(IBAction)btonPunto:(id)sender{
//      if (_punto {
//            return;
//      }
//      [ _display setText: [NSString stringWithFormat:@"%@.", [_display text]]];
//      _punto = YES;
//}
//-(IBAction)btonIgual:(id)sender{
//      double operando2 = [[_display text] doubleValue];
//      double resul = 0;
//      if ([_operador isEqualToString:@"+"])
//          resul = _operando1 + operando2;
//      } else if ([_operador isEqualToString:@"-"]) {
//          result = _operando1 - operando2;
//      } else if ([_operador isEqualToString:@"/"]) {
//          result = _operando1 / operando2;
//      } else if ([_operador isEqualToString:@"*"]) {
//          result = _operando1 * operando2;
//      }
//      [_display setText:[NSString stringWithFormat:@"%f", resul
//
//
//
