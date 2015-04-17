//
//  temperatureConversion.m
//  FarenheitToCelciusConverter
//
//  Created by Yung Dai on 2015-04-17.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "temperatureConversion.h"

@implementation temperatureConversion


- (double)convertFarenheitToCelcius {
    double farenheit = [_farenheit doubleValue];
    double celcius = (farenheit - 32) / 1.8;
    
    return celcius;
}

- (double)convertCelciusToFarenheit {
    double celcius = [_celsius doubleValue];
    double farenheit = (celcius * 9) /5 + 32;
    
    return farenheit;
}

@end
