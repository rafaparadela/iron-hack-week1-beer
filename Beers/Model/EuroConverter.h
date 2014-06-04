//
//  EuroConverter.h
//  Beers
//
//  Created by Rafa Paradela on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EuroConverter : NSObject

@property (nonatomic) CGFloat money;

+ (int) convertFromEuroToPeseta:(float)euros;
+ (float) convertFromPesetaToEuro:(int)pesetas;


- (float) convertToEuro;
- (int) convertuToPeseta;

@end
