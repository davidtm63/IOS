//
//  ViewController.h
//  CalculadoraIOS
//
//  Created by user137296 on 4/17/18.
//  Copyright © 2018 user137296. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//profe style
//@property IBOutlet UILabel *display

@property (weak, nonatomic) IBOutlet UILabel *calculatorDisplay;
@property (nonatomic) BOOL typingNumber;
@property (nonatomic) double firstNumber;
@property (nonatomic) double secondNumber;
@property (nonatomic, copy ) NSString *operation;

-(IBAction)numberPressed:(UIButton *)sender ;

-(IBAction)calculationPressed:(id)sender;
-(IBAction)equalsPressed:(id)sender;

@end
