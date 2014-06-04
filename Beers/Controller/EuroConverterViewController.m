//
//  EuroConverterViewController.m
//  Beers
//
//  Created by Rafa Paradela on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "EuroConverterViewController.h"
#import "EuroConverter.h"

@interface EuroConverterViewController()

@property (weak, nonatomic) IBOutlet UITextField *txtAmount;


@end

@implementation EuroConverterViewController

- (IBAction)convertMoney:(id)sender {
    
    NSString *cadena = self.txtAmount.text;
//    NSString *cadena = [[self txtAmount] text];
//    NSString *cadena = [self.txtAmount].text;
//    NSString *cadena = [self.txtAmount] text;
    
    float p = [cadena floatValue];
    float e = [EuroConverter convertFromPesetaToEuro:p];
    
    
    NSLog(@"%f", e);
}



@end
