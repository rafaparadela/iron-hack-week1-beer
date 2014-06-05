//
//  BeerListViewController.m
//  Beers
//
//  Created by Rafa Paradela on 05/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "BeerListViewController.h"
#import "BeerList.h"
#import "Beer.h"

@interface BeerListViewController ()

@property (weak, nonatomic) IBOutlet UIPickerView *pickBeer;
@property (weak, nonatomic) IBOutlet UIPickerView *pickPerson;
@property (nonatomic, strong) BeerList *beerList;

@end

@implementation BeerListViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        
        
        //self.pickBeer reloadAllComponents
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.pickBeer.delegate = self;
    self.pickBeer.dataSource = self;
    
    self.pickPerson.delegate = self;
    self.pickPerson.dataSource = self;
    

    
}

//LAZI GETTER
- (BeerList *)beerList {
    if(!_beerList){
        _beerList = [[BeerList alloc] init];
        
        for (int i = 0; i<100; i++) {
            Beer *cerveza = [[Beer alloc] init];
            NSString *nam = [NSString stringWithFormat:@"💩 Beer %d",i];
            [cerveza setName:nam];
            [_beerList addBeer: cerveza];
        }
    }
    return _beerList;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Pickerview delegate method

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    NSLog(@"Preguntando el numero de Cervezas");
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    NSLog(@"Preguntando el numero de Cervezas");
    return [self.beerList count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    NSLog(@"Preguntando la cerveza de la fila %ld", (long)row);
    Beer *beer = [[self.beerList allBeers] objectAtIndex:row];
    return beer.name;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
