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

- (IBAction)convertTemperature:(id)sender {
    double farenheit = [_tempText.text doubleValue];
    double celcius = (farenheit - 32) / 1.8;
    
    NSString *resultString = [[NSString alloc]initWithFormat:@"Celcius %.2f", celcius];
    
    _resultLabel.text = resultString;
}
@end
