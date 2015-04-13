//
//  ViewController.h
//  FarenheitToCelciusConverter
//
//  Created by Yung Dai on 2015-04-13.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *tempText;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;


- (IBAction)convertTemperatureButtonPressed:(id)sender;
- (IBAction)textFieldReturn:(id)sender;


@end

