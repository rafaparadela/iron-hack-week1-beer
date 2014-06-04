//
//  EuroConverter.m
//  Beers
//
//  Created by Rafa Paradela on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroConverter.h"

#define CONVERT_VALUE 166.386

@implementation EuroConverter

+ (int) convertFromEuroToPeseta:(float)euros{
    int p = euros * CONVERT_VALUE;
    return p;
}

+ (float) convertFromPesetaToEuro:(int)pesetas{
    float e = pesetas / CONVERT_VALUE;
    return e;
}


- (float) convertToEuro{
    float e = [EuroConverter convertFromPesetaToEuro:(int)self.money];
    return e;
}

- (int) convertuToPeseta{
    int p = [EuroConverter convertFromEuroToPeseta:self.money];
    return p;
}

@end
