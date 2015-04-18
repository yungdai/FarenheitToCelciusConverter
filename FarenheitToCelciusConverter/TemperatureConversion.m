//
//  TemperatureConversion.m
//  DelegationsAndProtocols
//
//  Created by Yung Dai on 2015-04-18.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "TemperatureConversion.h"

@implementation TemperatureConversion

- (double *)convertFarenheitToCelcius:(double *)valueInFarenheit {
    double celsius  = (*valueInFarenheit - 32) / 1.8;
    
    return &celsius;
}

- (double *)convertCelsiusToFarenheit:(double *)valueInCelcius {
    double farenheit = (*valueInCelcius * 9.0) /5 + 32;
    
    return &farenheit;
}

@end
