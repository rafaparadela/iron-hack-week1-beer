//
//  AlphaViewController.m
//  Beers
//
//  Created by Rafa Paradela on 03/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "AlphaViewController.h"

@interface AlphaViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation AlphaViewController


- (IBAction)sliderMoved:(id)sender {
    
    if(![sender isKindOfClass:[UISlider class]]){
        return;
    }
    UISlider *s = (UISlider *)sender;

    float a = s.value;
    //float a = [s value];
    
    self.image.alpha = a;
//    [self image].alpha = a;
//    [[self image] setAlpha: a];
    
}

- (IBAction)toggleImage:(id)sender {
    static BOOL toggle = YES;
    
    if (toggle) {
        self.image.image = [UIImage imageNamed:@"fari2.png"];
        toggle = NO;
    }
    else{
        self.image.image = [UIImage imageNamed:@"fari1.png"];
        toggle = YES;
    }
    
}

#define URL @"http://fugadedientes.files.wordpress.com/2010/08/fary-piscina.jpg"

- (IBAction)downloadImage:(id)sender {
    
    NSURL *theurl = [NSURL URLWithString:URL];
    NSData *data = [NSData dataWithContentsOfURL: theurl];
    UIImage *downloaded = [UIImage imageWithData:data];
    self.image.image = downloaded;
    
}



@end
