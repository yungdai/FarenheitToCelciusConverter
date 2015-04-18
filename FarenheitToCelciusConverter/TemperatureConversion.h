//
//  TemperatureConversion.h
//  DelegationsAndProtocols
//
//  Created by Yung Dai on 2015-04-18.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TemperatureConversion : NSObject
@property float farenheit;
@property float celsius;


- (double *)convertFarenheitToCelcius:(double *)valueInFarenheit;
- (double *)convertCelsiusToFarenheit:(double *)valueInCelsius;

@end
