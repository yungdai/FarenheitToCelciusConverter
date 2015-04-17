//
//  temperatureConversion.h
//  FarenheitToCelciusConverter
//
//  Created by Yung Dai on 2015-04-17.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface temperatureConversion : NSObject
@property (strong, nonatomic) NSNumber *farenheit;
@property (strong, nonatomic) NSNumber *celsius;


- (double)convertFarenheitToCelcius;
- (double)convertCelciusToFarenheit;
@end
