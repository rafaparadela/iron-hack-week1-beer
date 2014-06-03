//
//  AppDelegate.m
//  Beers
//
//  Created by Rafa Paradela on 02/06/14.
//  Copyright (c) 2014 ironhack. All rights reserved.
//

#import "AppDelegate.h"
#import "Beer.h"
#import "Person.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
    
//    Beer *mahou = [[Beer alloc] init];
//    Beer *cruzcampo = [[Beer alloc] init];
//    Beer *estrellaDamm = [[Beer alloc] init];
//    Beer *coronita = [[Beer alloc] init];
//    
//    [mahou setName:@"Mahou"];
//    [mahou setColor:@"Rubia"];
//    [mahou setGrade:4];
//    [mahou printBeerInfo];
//    
//    mahou.name = @"Pepita";
//    
    
//    [cruzcampo setName:@"Cruzcampo"];
//    [cruzcampo setColor:@"Rubia"];
//    [cruzcampo setGrade:5];
//    [cruzcampo printBeerInfo];
//    
//    [estrellaDamm setName:@"Estrella Damm"];
//    [estrellaDamm setColor:@"Negra"];
//    [estrellaDamm setGrade:3];
//    [estrellaDamm printBeerInfo];
//    
//    [coronita setName:@"Coronita"];
//    [coronita setColor:@"Rubia"];
//    [coronita setGrade:4];
//    [coronita printBeerInfo];
    
    
//    Person *bart = [[Person alloc] init];
//    Person *homer = [[Person alloc] initWithName:@"Homer"];
//    Person *marge = [[Person alloc] initWithName:@"Marge" andAddress:@"Springfield"];
//    Person *lisa = [[Person alloc] initWithName:@"Lisa" andAddress:@"Springfield" age:12];
//    
//    NSMutableArray *personList = [NSMutableArray arrayWithObjects:bart, homer, marge, lisa, nil];
//    NSMutableArray *personList2 = @[bart, homer];
//    
//    Person *maggy = [Person personWithName:@"Maggy"];
//    
//    for (Person * p in personList) {
//        [p printPerson];
//    }
//    
//    NSMutableArray *partylist = [NSMutableArray arrayWithObjects:bart, homer, nil];
//    
//    for (int i=0; i<100; i++) {
//        NSString *thename = [NSString stringWithFormat:@"Persona %d",i+1];
//        Person *newperson = [Person personWithName:thename];
//        [partylist addObject:newperson];
////        [newperson printPerson];
//    }
    
    
    
    
    
    
    

    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
