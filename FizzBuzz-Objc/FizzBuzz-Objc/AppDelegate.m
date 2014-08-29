//
//  AppDelegate.m
//  FizzBuzz-Objc
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Insert code here
    
    for (int i = 1; i < 1000; i++) {
        BOOL buzzed = isBuzzed(i);
        BOOL fizzed = isFizzed(i);
        if (fizzed && !buzzed)
            NSLog(@"Fizz");
        else if (!fizzed && buzzed)
            NSLog(@"Buzz");
        else if (fizzed && buzzed)
            NSLog(@"FizzBuzz");
        else
            NSLog(@"%d", i);
    }
    
    return YES;
}

BOOL isBuzzed(int number) {
    return checkFizzBuzz(number, 3);
}

BOOL isFizzed(int number) {
    return checkFizzBuzz(number, 5);
}

BOOL checkFizzBuzz(int number, int checkNumber) {
    BOOL status = false;
    
    if ((number % checkNumber) == 0)
        status = true;
    else {
        int n = number;
        for (int i = 0; i < 3; i++) {
            if ((n % 10) == checkNumber) {
                status = true;
                break;
            }
            n /= 10;
        }
    }
    
    return status;
}

@end
