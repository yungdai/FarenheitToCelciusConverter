//
//  ViewController.h
//  FarenheitToCelciusConverter
//
//  Created by Yung Dai on 2015-04-13.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


// new code for the selector
@property (weak, nonatomic) IBOutlet UISegmentedControl *temperatureSelectionControl;
@property (weak, nonatomic) IBOutlet UILabel *temperatureResultLabel;
@property (strong, nonatomic) IBOutlet UITextField *temperatureInput;

- (IBAction)selectedTemperature:(UISegmentedControl *)sender;

-(NSNumber*)simpleConvert:(NSNumber*)valueToConvert;


//- (IBAction)convertFarenheitToCelciusButtonPressed:(id)sender;
//- (IBAction)convertCelciusToFarenheitButtonPressed:(id)sender;
//
//
//
//- (IBAction)textFieldReturn:(id)sender;


@end

