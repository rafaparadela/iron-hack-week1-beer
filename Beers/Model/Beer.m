//
//  Beer.m
//  Beers
//
//  Created by Rafa Paradela on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Beer.h"

@implementation Beer

@synthesize country = _country;

- (NSString *) name{
    return self->name;
}

- (void) setName: (NSString * )newName{
    self->name = newName;
}

- (NSString *) color{
    return self->color;
}

- (void) setColor: (NSString * )newColor{
    self->color = newColor;
}

- (NSUInteger) grade{
    return self->grade;
}

- (void) setGrade: (NSUInteger)newGrade{
    self->grade = newGrade;
}


- (void) setCountry: (NSString * )newCountry{
    self->_country = newCountry;
}

- (NSString *) country{
    return self->_country;
}



- (void) printBeerInfo{
    NSLog(@"Name: %@ \t Color: %@ \t Grade: %lu \n", name, color, (unsigned long)grade);
}

- (void) printBeerInfoWithHeader: (NSString *)header{
    NSLog(@"%@ \n", header);
    [self printBeerInfo];
}

- (void) printBeerInfoWithHeader: (NSString *)header andFooter: (NSString *)footer{
    [self printBeerInfoWithHeader:header];
    NSLog(@"%@ \n", footer);
}

- (void) printBeerInfoWithHeader: (NSString *)header andFooter: (NSString *)footer andNumberOfEmojis:(NSUInteger) numberOfEmojis{
    [self printBeerInfoWithHeader:header andFooter:footer];
    NSLog(@"Y %lu emojis \n", (unsigned long)numberOfEmojis);
}


@end
