//
//  ViewController.h
//  FarenheitToCelciusConverter
//
//  Created by Yung Dai on 2015-04-13.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *convertfromFarenheitToCelcius;
@property (strong, nonatomic) IBOutlet UITextField *convertFromCelciustoFarenheit;
@property (strong, nonatomic) IBOutlet UILabel *resultInCelcius;
@property (strong, nonatomic) IBOutlet UILabel *resultInFarenheit;



- (IBAction)convertFarenheitToCelciusButtonPressed:(id)sender;
- (IBAction)convertCelciusToFarenheitButtonPressed:(id)sender;



- (IBAction)textFieldReturn:(id)sender;


@end

