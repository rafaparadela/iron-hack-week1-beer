//
//  BeerListTests.m
//  Beers
//
//  Created by Rafa Paradela on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "BeerList.h"
#import "Beer.h"

@interface BeerListTests : XCTestCase

@end

#define TEST_ERROR_MSG @"OMG! 💀"
#define TEST_COUNT 10

@implementation BeerListTests

- (void)testCanCreateABeerList {
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertNotNil(allBeers, TEST_ERROR_MSG);
    XCTAssertEqual(0, [allBeers count], @"Expected %d but found %lu! 😭", 0, [allBeers count]);
}

- (void)testCanCreateABeerListKVC {
    BeerList *allBeers = [[BeerList alloc] init];
    XCTAssertNotNil(allBeers, TEST_ERROR_MSG);
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"] integerValue], @"Expected %d but found %lu! 😭", 0, [[allBeers valueForKey:@"count"] integerValue]);
}




- (void)testCanAddABeerToTheList {
    BeerList *allBeers = [[BeerList alloc] init];
    Beer *mahou = [[Beer alloc] init];
    [allBeers addBeer: mahou];
    XCTAssertEqual(1, allBeers.count, @"Expected %d but found %lu! 😭", 1, allBeers.count );
}

- (void)testCanAddABeerToTheListKVC {
    BeerList *allBeers = [[BeerList alloc] init];
    Beer *mahou = [[Beer alloc] init];
    [allBeers addBeer: mahou];
    XCTAssertEqual(1, [[allBeers valueForKey:@"count"] integerValue], @"Expected %d but found %lu! 😭", 1, [[allBeers valueForKey:@"count"] integerValue] );
}


- (void)testCanRemoveABeerToTheList {
    BeerList *allBeers = [[BeerList alloc] init];
    Beer *mahou = [[Beer alloc] init];
    [allBeers addBeer: mahou];
    [allBeers removeBeer: mahou];
    XCTAssertEqual(0, allBeers.count, @"Expected %d but found %lu! 😭", 0, allBeers.count );
}

- (void)testCanRemoveABeerToTheListKVC {
    BeerList *allBeers = [[BeerList alloc] init];
    Beer *mahou = [[Beer alloc] init];
    [allBeers addBeer: mahou];
    [allBeers removeBeer: mahou];
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"] integerValue], @"Expected %d but found %lu! 😭", 0, [[allBeers valueForKey:@"count"] integerValue] );
}


- (void)testCountBeers {
    BeerList *allBeers = [[BeerList alloc] init];
    Beer *mahou = [[Beer alloc] init];
    
    for (int i = 0; i<TEST_COUNT; i++) {
        [allBeers addBeer: mahou];
    }
    
    XCTAssertEqual(TEST_COUNT, allBeers.count, @"Expected %d but found %lu! 😭", TEST_COUNT, allBeers.count );
}

- (void)testCountBeersKVC {
    BeerList *allBeers = [[BeerList alloc] init];
    Beer *mahou = [[Beer alloc] init];
    
    for (int i = 0; i<TEST_COUNT; i++) {
        [allBeers addBeer: mahou];
    }
    
    XCTAssertEqual(TEST_COUNT, [[allBeers valueForKey:@"count"] integerValue], @"Expected %d but found %lu! 😭", TEST_COUNT, [[allBeers valueForKey:@"count"] integerValue] );
}



- (void)testCantChangeCountOfBeers {
    BeerList *allBeers = [[BeerList alloc] init];
    
    [allBeers setCount:TEST_COUNT];
    XCTAssertEqual(0, allBeers.count, @"Expected %d but found %lu! 😭", 0, allBeers.count );
}

- (void)testCantChangeCountOfBeersKVC {
    BeerList *allBeers = [[BeerList alloc] init];
    
    [allBeers setCount:TEST_COUNT];
    XCTAssertEqual(0, [[allBeers valueForKey:@"count"] integerValue], @"Expected %d but found %lu! 😭", 0, [[allBeers valueForKey:@"count"] integerValue] );
}


- (void)testAllBeers{
    BeerList *allBeers = [[BeerList alloc] init];
    
    for (int i = 0; i<TEST_COUNT; i++) {
        Beer *mahou = [[Beer alloc] init];
        NSString *nam = [NSString stringWithFormat:@"%d",i];
        [mahou setName:nam];
        [allBeers addBeer: mahou];
    }
    
    NSArray *newlist = [allBeers allBeers];
    XCTAssertEqual(TEST_COUNT, newlist.count, @"Expected %d but found %lu! 😭", 0, newlist.count );
    
    for (int i = 0; i<TEST_COUNT; i++) {
        Beer *otra = [newlist objectAtIndex:i];
        NSString *nam = [NSString stringWithFormat:@"%d",i];
        XCTAssertEqualObjects(nam, otra.name, @"");
    }
    
    [[allBeers allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        Beer *beerToTest = (Beer *)obj;
        NSLog(@"%@ %lu",beerToTest.name, (unsigned long)idx);
    }];
    
    
    
}

- (void)testAllBeersKVC{
    BeerList *allBeers = [[BeerList alloc] init];
    
    for (int i = 0; i<TEST_COUNT; i++) {
        Beer *mahou = [[Beer alloc] init];
        NSString *nam = [NSString stringWithFormat:@"%d",i];
        [mahou setValue:nam forKey:@"name"];
        [allBeers addBeer: mahou];
    }
    
    NSArray *newlist = [allBeers allBeers];
    XCTAssertEqual(TEST_COUNT, newlist.count, @"Expected %d but found %lu! 😭", 0, newlist.count );

    
    for (int i = 0; i<TEST_COUNT; i++) {
        Beer *otra = [newlist objectAtIndex:i];
        NSString *nam = [NSString stringWithFormat:@"%d",i];
        XCTAssertEqualObjects(nam, [otra valueForKey:@"name"], @"");
    }
    
    [[allBeers allBeers] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        Beer *beerToTest = (Beer *)obj;
        NSLog(@"%@ %lu",[beerToTest valueForKey:@"name"], (unsigned long)idx);
    }];


    
    
}








@end
