//
//  ViewController.m
//  FarenheitToCelciusConverter
//
//  Created by Yung Dai on 2015-04-13.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
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

// this code will hide the keyboard when the return key on the keyboard is pressed
- (IBAction)textFieldReturn:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)convertFarenheitToCelciusButtonPressed:(id)sender {
    double farenheit = [_convertfromFarenheitToCelcius.text doubleValue];
    double celcius = (farenheit - 32) / 1.8;
    
    NSString *resultString = [[NSString alloc]initWithFormat:@"Celcius %.2f", celcius];
    
    _resultInCelcius.text = resultString;
    
    // this code makes it that when everything in this method is completed, it will hide the keyboard.
    [_convertfromFarenheitToCelcius resignFirstResponder];

    
}

- (IBAction)convertCelciusToFarenheitButtonPressed:(id)sender {
    
    double celcius = [_convertFromCelciustoFarenheit.text doubleValue];
    double farenheit = (celcius * 9) /5 + 32;
    
    NSString *resultString = [[NSString alloc]initWithFormat:@"Farenheit %.2f", farenheit];
    
    _resultInFarenheit.text = resultString;
    
    // once again hide the keyboard after the button is pressed
    [_convertFromCelciustoFarenheit resignFirstResponder];

    
}


// this code ensures that the two text boxes will hide the keyboard whenever anythign else is touched.
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    if ([_convertfromFarenheitToCelcius isFirstResponder] && [touch view] != _convertfromFarenheitToCelcius) {
        [_convertfromFarenheitToCelcius resignFirstResponder];
    } else if ([_convertFromCelciustoFarenheit isFirstResponder] && [touch view] != _convertFromCelciustoFarenheit) {
        [_convertFromCelciustoFarenheit isFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}
@end
