//
//  PersonTests.m
//  Beers
//
//  Created by Rafa Paradela on 04/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

@interface PersonTests : XCTestCase

@end

@implementation PersonTests

#define TEST_ERROR_MSG @"OMG! 💀"
#define TEST_NAME @"Anonimo"
#define TEST_ADDRESS @"undefined"
#define TEST_AGE 99

- (void)testCanCreateAPerson {
    Person *p = [[Person alloc] init];
    XCTAssertNotNil(p, TEST_ERROR_MSG);
    XCTAssertEqualObjects(TEST_NAME, p.name, @"Expected %@ but found %@! 😭", TEST_NAME, p.name);
    XCTAssertEqualObjects(TEST_ADDRESS, p.address, @"Expected %@ but found %@! 😭", TEST_ADDRESS, p.address);
    XCTAssertEqual(TEST_AGE, p.age, @"Expected %d but found %lu! 😭", TEST_AGE, p.age);
}

- (void)testCanCreateAPersonWithName {
    NSString * new_test_name = @"Rafa Paradela";
    
    Person *p = [[Person alloc] initWithName: new_test_name];
    XCTAssertNotNil(p, TEST_ERROR_MSG);
    XCTAssertEqualObjects(new_test_name, p.name, @"Expected %@ but found %@! 😭", new_test_name, p.name);
    XCTAssertEqualObjects(TEST_ADDRESS, p.address, @"Expected %@ but found %@! 😭", TEST_ADDRESS, p.address);
    XCTAssertEqual(TEST_AGE, p.age, @"Expected %d but found %lu! 😭", TEST_AGE, p.age);
}

- (void)testCanCreateAPersonWithNameAndAddress {
    NSString * new_test_name = @"Rafa Paradela";
    NSString * new_test_address = @"Calle Bodega";
    
    Person *p = [[Person alloc] initWithName: new_test_name andAddress:new_test_address];
    XCTAssertNotNil(p, TEST_ERROR_MSG);
    XCTAssertEqualObjects(new_test_name, p.name, @"Expected %@ but found %@! 😭", new_test_name, p.name);
    XCTAssertEqualObjects(new_test_address, p.address, @"Expected %@ but found %@! 😭", new_test_address, p.address);
    XCTAssertEqual(TEST_AGE, p.age, @"Expected %d but found %lu! 😭", TEST_AGE, p.age);
}

- (void)testCanCreateAPersonWithNameAndAddressAndAge {
    NSString * new_test_name = @"Rafa Paradela";
    NSString * new_test_address = @"Calle Bodega";
    NSUInteger new_test_age= 45;
    
    Person *p = [[Person alloc] initWithName: new_test_name andAddress:new_test_address age:new_test_age];
    XCTAssertNotNil(p, TEST_ERROR_MSG);
    XCTAssertEqualObjects(new_test_name, p.name, @"Expected %@ but found %@! 😭", new_test_name, p.name);
    XCTAssertEqualObjects(new_test_address, p.address, @"Expected %@ but found %@! 😭", new_test_address, p.address);
    XCTAssertEqual(new_test_age, p.age, @"Expected %lu but found %lu! 😭", (unsigned long)new_test_age, p.age);
}


- (void)testCanCreateAPersonWithNameWithClassMethod {
    NSString * new_test_name = @"Rafa Paradela";
    Person *p = [Person personWithName:new_test_name];
    
    XCTAssertNotNil(p, TEST_ERROR_MSG);
    XCTAssertEqualObjects(new_test_name, p.name, @"Expected %@ but found %@! 😭", new_test_name, p.name);
    XCTAssertEqualObjects(TEST_ADDRESS, p.address, @"Expected %@ but found %@! 😭", TEST_ADDRESS, p.address);
    XCTAssertEqual(TEST_AGE, p.age, @"Expected %d but found %lu! 😭", TEST_AGE, p.age);
}

- (void)testCanCreateAPersonWithNameAndAddressWithClassMethod {
    NSString * new_test_name = @"Rafa Paradela";
    NSString * new_test_address = @"Calle Bodega";
    
    Person *p = [Person personWithName:new_test_name andAddress:new_test_address];
    XCTAssertNotNil(p, TEST_ERROR_MSG);
    XCTAssertEqualObjects(new_test_name, p.name, @"Expected %@ but found %@! 😭", new_test_name, p.name);
    XCTAssertEqualObjects(new_test_address, p.address, @"Expected %@ but found %@! 😭", new_test_address, p.address);
    XCTAssertEqual(TEST_AGE, p.age, @"Expected %d but found %lu! 😭", TEST_AGE, p.age);
}



@end
