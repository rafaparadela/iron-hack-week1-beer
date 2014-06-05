//
//  HotelTests.m
//  Beers
//
//  Created by Rafa Paradela on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Hotel.h"
#import "Person.h"

@interface HotelTests : XCTestCase

@end

#define TEST_ERROR_MSG @"OMG! 💀"

@implementation HotelTests

- (void)testCanAddPersonToRoom {
    Person *p = [[Person alloc] initWithName:@"Rafa Paradela"];
    XCTAssertNotNil(p, TEST_ERROR_MSG);
    
    Hotel *h = [[Hotel alloc] init];
    XCTAssertNotNil(h, TEST_ERROR_MSG);
    
    [h addPerson:p toRoom:@"100"];
    
    XCTAssertEqual(1, [[h allRooms] count], @"Expected %d but found %lu! 😭", 1, [[h allRooms] count] );
}

-(void)testCanReadAllRooms{
    Person *p = [[Person alloc] initWithName:@"Rafa Paradela"];
    Hotel *h = [[Hotel alloc] init];
    for (int i=101; i<114; i++) {
        NSString * habitacion = [NSString stringWithFormat:@"Habitacion %d", i];
        NSLog(@"%@",habitacion);
        [h addPerson:p toRoom:habitacion];
    }
    
    XCTAssertEqual(13, [[h allRooms] count], @"Expected %d but found %lu! 😭", 13, [[h allRooms] count] );
}

-(void)testCanToGetWhoSleepsAtRoom{
    Person *p = [[Person alloc] initWithName:@"Rafa Paradela"];
    Hotel *h = [[Hotel alloc] init];
    [h addPerson:p toRoom:@"100"];
    Person *p2 = [h whoSleepsAtRoom:@"100"];
    XCTAssertEqualObjects(p2.name, @"Rafa Paradela", @"");
}

-(void)testCanGetNumeberOfOccupiedRooms{
    Person *p = [[Person alloc] initWithName:@"Rafa Paradela"];
    Hotel *h = [[Hotel alloc] init];
    for (int i=101; i<114; i++) {
        NSString * habitacion = [NSString stringWithFormat:@"Habitacion %d", i];
        NSLog(@"%@",habitacion);
        [h addPerson:p toRoom:habitacion];
    }
    
    XCTAssertEqual(13, [h numberOfOccupiedRooms], @"Expected %d but found %lu! 😭", 13, [h numberOfOccupiedRooms] );
}






@end
