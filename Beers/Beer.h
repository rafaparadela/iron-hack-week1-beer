//
//  Beer.h
//  Beers
//
//  Created by Rafa Paradela on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Beer : NSObject {
    NSString *name;
    NSString *color;
    NSUInteger grade;
}

- (void) printBeerInfo;
- (void) printBeerInfoWithHeader: (NSString *)header;
- (void) printBeerInfoWithHeader: (NSString *)header andFooter: (NSString *)footer;
- (void) printBeerInfoWithHeader: (NSString *)header andFooter: (NSString *)footer andNumberOfEmojis:(NSUInteger) numberOfEmojis;

@end
