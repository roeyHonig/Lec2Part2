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
            let avg = Double(sumOfArray(arr: arr)) / Double(arr.count)
            return avg
        }
        // tryme
        func sumOfArray(arr:[Int])->Int{
            var sum = 0
            for item in arr {
                sum = sum + item
            }
            return sum
        }
        
        //Tupple = retrun whatever you want
        func statistics(arr:[Int])->(Int,Int,Int,Double){
            let max = maxOfArray(arr: arr)
            let min = minOfArray(arr: arr)
            let sum = sumOfArray(arr: arr)
            let ave = AverageOfArray(arr: arr)
            return (max,min,sum,ave)
        }
        // function with Argument labels
        func sayHello(to name:String, on birthday:String){
            // if birthday
            print("Hello, \(name) , happy bithday")
        }
    
        //caling the function
        sayHello(to: "roey", on: "2.8.1982")
        
        print("Array: \(testArry)")
        print("The max in the Array: \(maxOfArray(arr: testArry))")
        print("The min in the Array: \(minOfArray(arr: testArry))")
        print("The sum of the Array: \(sumOfArray(arr: testArry))")
        print("The Average of the Array: \(AverageOfArray(arr: testArry))")
        print("The Tupple is: \(statistics(arr: testArry))")
        
        // lets dive a bit into Tupple
        // option 1:
        // assign the tupple to a single variable
        let stats = statistics(arr: testArry)
        print("Avg: \(stats.3)")
        print("Sum: \(stats.2)")
        
        //option2:
        //Tuple Destructring
        // the underscore "_" is the fix of the warning to why do we declare locale variables but never use them
        // so the "_" tells swift, ok, i don't care about them, go ahead and garbage collect them right now
        let (_, _, sum, avg) = statistics(arr: testArry)
        print("Avg: \(avg)")
        print("Sum: \(sum)")
        
        //option3:
        //Tuple - adding names to the expectedd results of the function
        func improvedStatistics(arr:[Int])->(min:Int, max: Int, sum: Int, avg: Double){
            let max = maxOfArray(arr: arr)
            let min = minOfArray(arr: arr)
            let sum = sumOfArray(arr: arr)
            let avg = AverageOfArray(arr: arr)
            return (max,min,sum,avg)
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

