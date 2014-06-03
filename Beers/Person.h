//
//  Person.h
//  Beers
//
//  Created by Rafa Paradela on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//Propertys
@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSUInteger age;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, getter = isMarried) BOOL married;

//Metodos de Clase
+ (id) personWithName: (NSString *)name;
+ (id) personWithName: (NSString *)name andAddress:(NSString *)address;

//Metodos de metodos
- (id) init;
- (id) initWithName: (NSString *)name;
- (id) initWithName: (NSString *)name andAddress: (NSString *)address;
- (id) initWithName: (NSString *)name andAddress: (NSString *)address age: (NSUInteger) age;




- (void) printPerson;

@end
