//
//  PersonList.h
//  Beers
//
//  Created by Rafa Paradela on 05/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonList : NSObject

@property (nonatomic) NSUInteger count;

- (void) addPerson: (Person *) person;
- (void) removePerson: (Person *) person;
- (NSUInteger)count;
- (NSArray *)allPersons;

@end
