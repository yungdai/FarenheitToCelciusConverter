//
//  temperatureConversion.m
//  FarenheitToCelciusConverter
//
//  Created by Yung Dai on 2015-04-17.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "temperatureConversion.h"

@implementation temperatureConversion


- (NSNumber *)convertFarenheitToCelcius:(NSNumber *)valueInFarenheit {
    NSNumber *celsius  = (valueInFarenheit - 32) / 1.8;
    
    return celsius;
}

- (NSNumber *)convertCelsiusToFarenheit:(NSNumber *)valueInCelcius {
    NSNumber *farenheit = (valueInCelcius * 9.0) /5 + 32;
    
    return farenheit;
}

@end
