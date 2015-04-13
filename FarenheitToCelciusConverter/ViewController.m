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

- (IBAction)convertTemperatureButtonPressed:(id)sender {
    double farenheit = [_tempText.text doubleValue];
    double celcius = (farenheit - 32) / 1.8;
    
    NSString *resultString = [[NSString alloc]initWithFormat:@"Celcius %.2f", celcius];
    
    _resultLabel.text = resultString;
    [_tempText resignFirstResponder];
}


// this code ensures that _tempText will hide the keyboard whenever anythign else is touched.
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    if ([_tempText isFirstResponder] && [touch view] != _tempText) {
        [_tempText resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}
@end
