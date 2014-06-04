//
//  Person.m
//  Beers
//
//  Created by Rafa Paradela on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "Person.h"

@implementation Person

#pragma mark - Classes methods

+ (id) personWithName: (NSString *)name{
    return [[Person alloc] initWithName:name];
}

+ (id) personWithName: (NSString *)name andAddress:(NSString *)address{
    return [[Person alloc] initWithName:name andAddress:address];
}

#pragma mark - Initializers

- (id) init{
    self = [self initWithName:@"Anonimo" andAddress:@"undefined" age:99];
    return self;
}

- (id) initWithName: (NSString *)name{
    self = [self initWithName:name andAddress:@"undefined" age:99];
    return self;
}

- (id) initWithName: (NSString *)name
         andAddress: (NSString *)address{
    self = [self initWithName:name andAddress:address age:99];
    return self;
}

- (id) initWithName: (NSString *)name
         andAddress: (NSString *)address
                age: (NSUInteger) age{
    self = [super init];
    if(self){
        _name = name;
        _address = address;
        _age = age;
    }
    return self;

}

#pragma mark - Other methods

-(void) printPerson{
    NSLog(@"%@", _name);
}

@end
