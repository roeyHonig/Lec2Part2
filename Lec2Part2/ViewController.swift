// viewController is kind like an activty we had in android
//
//  ViewController.swift
//  Lec2Part2
//
//  Created by hackeru on 11 Iyar 5778.
//  Copyright © 5778 student.roey.honig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // this type is [String: [Int]] meaning the keys are Strings and the Values are Strings
        let dictOfSeries = [
            "Prime": [2,3,5,7,11,13],
            "Fibonachy": [1,1,2,3,5,8,13],
            "Square": [1,4,9,16,25]
        ]
        print(dictOfSeries)
        print("hello, world")
        print("yes")
        //mutable => var
        //imutable => let
        if let primes = dictOfSeries["Prime"]{
            print(primes)
        } else {
            print("nillllllll")
        }
        
        
        // write code that finds the max value in the fibonachi array :-)
        if let fibonachy = dictOfSeries["Fibonachy"]{
            var fibMax = fibonachy[0]
            for fibNum in fibonachy{
                if fibNum > fibMax {
                    fibMax = fibNum
                }
            }
            print("The Largest Number in Fibonachi is: \(fibMax)")
            
    
        } else {
            print("nil")
        }
        
        
        
    
    
    
    
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

