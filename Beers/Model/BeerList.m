//
//  BeerList.m
//  Beers
//
//  Created by Rafa Paradela on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BeerList.h"

@interface BeerList()

@property (nonatomic, strong) NSMutableArray * theList;

@end

@implementation BeerList


- (id)initWithFile: (NSString *)fileName{
    if (self = [self init]) {
        
        NSString *fileNameAndPath = [[NSBundle mainBundle]pathForResource:fileName ofType:@"plist"];
        NSArray *array = [NSArray arrayWithContentsOfFile:fileNameAndPath];
        
        
        for (NSDictionary *dict in array) {
            Beer *beer = [[Beer alloc] init];
            beer.name = [dict objectForKey:@"name"];
            beer.grade = [[dict objectForKey:@"grade"] integerValue];
            beer.color = [dict objectForKey:@"color"];
            beer.country = [dict objectForKey:@"country"];
            
            [self addBeer:beer];
        }
        
        
    }
    return self;
}

- (id)init
{
    self = [super init];
    if (self) {
        _theList = [[NSMutableArray alloc] init];
    }
    return self;
}



- (void) addBeer: (Beer *) beer{
    [self.theList addObject:beer];
}

- (void) removeBeer: (Beer *) beer{
    [self.theList removeObject:beer];
}

- (NSUInteger)count{
    return [self.theList count];
}

- (NSArray *)allBeers{
//    NSArray *newlist = [NSArray arrayWithArray:self.theList];
//    return newlist;
    
    return self.theList;
}

@end
