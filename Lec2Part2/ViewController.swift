// viewController is kind like an activty we had in android
//
//  ViewController.swift
//  Lec2Part2
//
//  Created by hackeru on 11 Iyar 5778.
//  Copyright © 5778 student.roey.honig. All rights reserved.
//

import UIKit


// this is the Global workSpace
// in swift i can do declarions, and only declaritions!!! here

// don't start coding here like loops etc...


// In swift functions can be global, outside the class, we never had that in Java
// inside class: methood
// outside class: function
func woot(){
    // global
}

func createARandom(upperLimit: Int)->(Int) {
    // there's a global function to preduce random numbers
    // UInt32 is a positive integer 32 bit - Unsigned
    
    //init UInt32(10) -> upper = 10
    let upper = UInt32(upperLimit)
    //random UInt32(0...<10)
    let randomNumber = arc4random_uniform(upper)
    // convert to int
    let r = Int(randomNumber)
    // return
    return r
}


// unlike in java where they don't use enum but insted create class with public static final fields
// in Swift they love enum
//❤️♠️♦️♣️
let 👮 = "Money :)"

enum Suit {
    case Spades
    case Hearts
    case Diamonds, Clubs
    
    func getDescription() -> String{
        switch self {
        case .Clubs:
            return "♣️"
        case .Hearts:
            return "❤️"
        case .Spades:
            return "♠️"
        case .Diamonds:
            return "♦️"
        
        }
    }
    
    
    // !!! very important i can assign value (Strings or Int) directlly to the identifiers
    // and here's the kicker, if two = 2 , it will continue to add values, swift will
    // infar that three = 3 without me telling it
    enum Rank: Int {
        case two = 2, three, four, five, six, seven, eight, nine, ten
        case Jack , Queen , King, Ace
        var description: String{
            switch self {
            case .Jack:
                return "Jack"
            case .Queen:
                return "Queen"
            case .King:
                return "King"
            case .Ace:
                return "Ace"
            default:
                return "\(rawValue)"
            }
        }
        
        var numericValue: Int {
            switch self {
            case .Jack, .Queen, .King:
                return 10
            case .Ace:
                return 11
            default:
                return rawValue
            }
        }
    }
    
    //!!!! very important, insted of a method i can treat this as a computed property
    var description: String {
        switch self {
        case .Clubs:
            return "♣️"
            
        default:
            return "@#!"
        }    }
}

//property getter in swift
class Person{
    //constructor??
    var firstName: String
    var lastName: String
    
    //!!!!!!!!!!!very important
    //what is a computed property
    var fullName: String {
        return "\(self.firstName) - \(self.lastName)"
    }
    // !!!!!!!!very important
    
    // this is the constractor in swift
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName
    }
}

enum Direction {
    case north, south, east, west
    var oppesite: String{
        switch self {
        case .north:
            return "south"
        case .south:
            return "north"
        case .east:
            return "west"
        case .west:
            return "east"
        }
    }
}




class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // this type is [String: [Int]] meaning the keys are Strings and the Values are Strings
        
        let userChoice = Direction.north
        switch userChoice {
        case Direction.north:
            print(userChoice)
        case Direction.south:
            print(userChoice)
        case Direction.east:
            print(userChoice)
        case Direction.west:
            print(userChoice)
        
        }
        
        let btn = UIButton()
        btn.isEnabled = false // regular method, because it is related to an object
        // Global function print
        print("hi, i'm print function, i'm a global function. you can call me from everywhere in the program")
        
        let upperBound = 10
        for i in 1...20{
            print("Here is a random number between 0 and  \(upperBound)")
            print(createARandom(upperLimit: upperBound))
            
        }
        
        
        
        
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
                print("Avg: \(improvedStatistics(arr: testArry).avg)")
                print("Sum: \(improvedStatistics(arr: testArry).sum)")
            
        
        
        // Ok lets start some new material about functions in swift
        
        funcParams(x: 10)
        
        // In swift i can do func overloading with the same functions just diffrent parmeters names
        
        
        // call a function without parmeters names
        aFunctionWithNoParmeterName("roey")
        
        // End of ViewDidLoad main func
        
    }
    
    func funcParams(x: Int) {
        for i in 0...x{
            print(i)
        }
    }
    
    // in Swift i can do funcion overloading even if the same name functions recive the same type parmaeters.
    // just change the names of the parmeters
    func saveTheTime(day: String){
        print("Saving you the \(day)")
    }
    
    func saveTheTime(dayLiteral: String){
        print("Saving you the \(dayLiteral)")
    }
    
    func aFunctionWithNoParmeterName(_ toPrint: String) {
        print(toPrint)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

