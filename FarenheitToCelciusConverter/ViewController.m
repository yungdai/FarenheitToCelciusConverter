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

- (instancetype)init
{
    self = [super init];
    if (self) {
        _temperatureResultLabel = 0;
    }
    return self;
}

// here are the two methods to do the take the temperatureInput and convert them to the respective temperature values
- (void)convertFarenheitToCelsius {
    double farenheit = [_temperatureInput.text doubleValue];
    double celcius = (farenheit - 32) / 1.8;
    
    NSString *resultLabel = [[NSString alloc]initWithFormat:@"%.0f°F is %.1f in Celsius", farenheit, celcius];
    _temperatureResultLabel.text = resultLabel;
}


- (void)convertCelsiusToFarenheit {
    double celsius = [_temperatureInput.text doubleValue];
    double farenheit = (celsius * 1.8) +32;
    
    NSString *resultLabel = [[NSString alloc]initWithFormat:@"%.0f°C is %.1f in Farenheit", celsius, farenheit];
    
    _temperatureResultLabel.text = resultLabel;
}


- (void)viewDidLoad {
    [super viewDidLoad];


    // Do any additional setup after loading the view, typically from a nib.
    
}

- (IBAction)selectedTemperature:(UISegmentedControl *)sender {
    switch (self.temperatureSelectionControl.selectedSegmentIndex)
    {
            
        case 0:
            [self convertCelsiusToFarenheit];
            break;
        
        case 1:
            [self convertFarenheitToCelsius];
            break;
    }
}

// This code will autoupdate the temperatureLabelResultLabel when something is type into the textbox
- (IBAction)textInputDetected:(id)sender {
    
    if (self.temperatureSelectionControl.selectedSegmentIndex == 0) {
        [self convertCelsiusToFarenheit];
    } else if (self.temperatureSelectionControl.selectedSegmentIndex == 1) {
        [self convertFarenheitToCelsius];
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// this code will hide the keyboard when the return key on the keyboard is pressed
- (IBAction)temperatureInputReturn:(id)sender {
    [sender resignFirstResponder];
}


// this code ensures that the two text boxes will hide the keyboard whenever anythign else is touched.
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[event allTouches] anyObject];
    if ([_temperatureResultLabel isFirstResponder] && [touch view] != _temperatureResultLabel) {
        [_temperatureResultLabel resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}
@end
