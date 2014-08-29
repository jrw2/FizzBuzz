//
//  AppDelegate.swift
//  FizzBuzz-Swift
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {
        
        // Insert code here...
        
        for i in 1..<1000 {
            var buzzed: Bool = isBuzzed(i)
            var fizzed: Bool = isFizzed(i)
            if (fizzed && !buzzed) {
                NSLog("Fizz")
            } else if (!fizzed && buzzed) {
                NSLog("Buzz")
            } else if (fizzed && buzzed) {
                NSLog("FizzBuzz")
            } else {
                NSLog("\(i)")
            }
        }
        
        return true
    }
    
    func isBuzzed(number: Int) -> Bool {
        return checkFizzBuzz(number, 3)
    }
    
    func isFizzed(number: Int) -> Bool {
        return checkFizzBuzz(number, 5)
    }
    
    func checkFizzBuzz(number: Int, checkNumber: Int) -> Bool {
        var status: Bool = false
    
        if ((number % checkNumber) == 0) {
            status = true
        } else {
            var n: Int = number
            for i in 0..<3 {
                if ((n % 10) == checkNumber) {
                    status = true
                    break
                }
                n /= 10
            }
        }
    
    return status
    }

 }

