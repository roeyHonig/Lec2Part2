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
        
        var max = 0
        // write code that finds the max value in all the series :-)
        for (name, arr) in dictOfSeries{
            for item in arr {
                if item > max {
                    max = item
                }
            }
        }
        print(max)
        
        
        // this how we write functions, no need to write void
        func sayHello(){
            
        }
        
        func sayHello(to:String){
            print("Hello, \(to)")
        }
        
        let testArry = [7,9,4,2]
        
        func maxOfArray(arr:[Int])->Int{
            var max = arr[0]
            for item in arr {
                if item > max {
                    max = item
                }
            }
            return max
        }
        
        func minOfArray(arr:[Int])->Int{
            var min = arr[0]
            for item in arr {
                if item < min {
                    min = item
                }
            }
            return min
        }
        
        func AverageOfArray(arr:[Int])->Double{
            let avg = sumOfArray(arr: arr) / Double(arr.count)
            return avg
        }
        // tryme
        func sumOfArray(arr:[Int])->Double{
            var sum = 0.0
            for item in arr {
                sum = sum + Double(item)
            }
            return sum
        }
        
        //Tupple = retrun whatever you want
        func statistics(arr:[Int])->(Int,Int,Double,Double){
            return (maxOfArray(arr: arr),minOfArray(arr: arr),sumOfArray(arr: arr),AverageOfArray(arr: arr)) // HW...
        }
        // function with Argument labels
        func sayHello(to name:String, on birthday:String){
            // if birthday
            print("Hello, \(name) , happy bithday")
        }
    
        //caling the function
        sayHello(to: "roey", on: "2.8.1982")
        
        
        print("The max in the Array: \(maxOfArray(arr: testArry))")
        print("The min in the Array: \(minOfArray(arr: testArry))")
        print("The sum of the Array: \(sumOfArray(arr: testArry))")
        print("The Average of the Array: \(AverageOfArray(arr: testArry))")
        print("The Tupple is: \(statistics(arr: testArry))")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

