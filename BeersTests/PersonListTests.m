//
//  PersonListTests.m
//  Persons
//
//  Created by Rafa Paradela on 05/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "PersonList.h"
#import "Person.h"

@interface PersonListTests : XCTestCase

@end

#define TEST_ERROR_MSG @"OMG! 💀"
#define TEST_COUNT 10

@implementation PersonListTests

- (void)testCanCreateAPersonList {
    PersonList *allPersons = [[PersonList alloc] init];
    XCTAssertNotNil(allPersons, TEST_ERROR_MSG);
    XCTAssertEqual(0, [allPersons count], @"Expected %d but found %lu! 😭", 0, [allPersons count]);
}



- (void)testCanAddAPersonToTheList {
    PersonList *allPersons = [[PersonList alloc] init];
    Person *p = [[Person alloc] init];
    [allPersons addPerson: p];
    XCTAssertEqual(1, allPersons.count, @"Expected %d but found %lu! 😭", 1, allPersons.count );
}


- (void)testCanRemoveAPersonToTheList {
    PersonList *allPersons = [[PersonList alloc] init];
    Person *mahou = [[Person alloc] init];
    [allPersons addPerson: mahou];
    [allPersons removePerson: mahou];
    XCTAssertEqual(0, allPersons.count, @"Expected %d but found %lu! 😭", 0, allPersons.count );
}



- (void)testCountPersons {
    PersonList *allPersons = [[PersonList alloc] init];
    Person *mahou = [[Person alloc] init];
    
    for (int i = 0; i<TEST_COUNT; i++) {
        [allPersons addPerson: mahou];
    }
    
    XCTAssertEqual(TEST_COUNT, allPersons.count, @"Expected %d but found %lu! 😭", TEST_COUNT, allPersons.count );
}


- (void)testCantChangeCountOfPersons {
    PersonList *allPersons = [[PersonList alloc] init];
    
    [allPersons setCount:TEST_COUNT];
    XCTAssertEqual(0, allPersons.count, @"Expected %d but found %lu! 😭", 0, allPersons.count );
}


- (void)testAllPersons{
    PersonList *allPersons = [[PersonList alloc] init];
    
    for (int i = 0; i<TEST_COUNT; i++) {
        Person *mahou = [[Person alloc] init];
        NSString *nam = [NSString stringWithFormat:@"%d",i];
        [mahou setName:nam];
        [allPersons addPerson: mahou];
    }
    
    NSArray *newlist = [allPersons allPersons];
    XCTAssertEqual(TEST_COUNT, newlist.count, @"Expected %d but found %lu! 😭", 0, newlist.count );
    
    for (int i = 0; i<TEST_COUNT; i++) {
        Person *otra = [newlist objectAtIndex:i];
        NSString *nam = [NSString stringWithFormat:@"%d",i];
        XCTAssertEqualObjects(nam, otra.name, @"");
    }
    
    [[allPersons allPersons] enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        Person *PersonToTest = (Person *)obj;
        NSLog(@"%@ %lu",PersonToTest.name, (unsigned long)idx);
    }];
    
    
    
}




@end

