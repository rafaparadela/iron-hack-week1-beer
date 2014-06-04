//
//  EuroCalculatorViewController.m
//  Beers
//
//  Created by Rafa Paradela on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroCalculatorViewController.h"


@implementation EuroCalculatorViewController

- (IBAction)tapButton:(id)sender {
    if(![sender isKindOfClass:[UIButton class]]){
        return;
    }
    UIButton *b = (UIButton *)sender;
//    NSLog(@"%@", [[b titleLabel] text]);
    NSLog(@"%ld", (long)b.tag);
//    NSLog(@"%@", [b titleLabel].text);
//    NSLog(@"%@", [b.titleLabel text]);
}


- (IBAction)toEuro:(id)sender {
    NSLog(@"Must to convert to Euros");
}


- (IBAction)toPesetas:(id)sender {
    NSLog(@"Must to convert to Pesetas");
}


@end
