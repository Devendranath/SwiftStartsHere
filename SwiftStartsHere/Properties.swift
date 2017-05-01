//
//  Properties.swift
//  SwiftStartsHere
//
//  Created by apple on 21/05/16.
//
//

/*
 Properties associate values in Classes, Structures and Enumeraters
 Propertioes are two types
 i. Stored Properties (Stored properties store constant and variable values as part of an instance) (C,S)
 ii. Computed Properties (Computed properties calculate (rather than store) a value) (C,S,E)
     Computed Properties provides Getter and Optional setter for setting and getting the values for other properties
 
 iii. Type Properties
 
 iv. Lazy Stored Properties: A lazy stored property is a property whose initial value is not calculated until the first time it is used. You indicate a lazy stored property by writing the lazy modifier before its declaration.
 lazy variables must be var types, since the value might be setted after initilization
 
 Property Observers can only be added to Stored Properties
 Stored properties can be either var / let
 
 let constantStructure = aVariableStructure
 constantStructure.property = aValue // ERROR
 
 let constantClassInstance = aVariableClassInstance
 constantClassInstance.property = aValue // Not an Error because classes are reference typed
 

 */

// URL Ref: https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html#//apple_ref/doc/uid/TP40014097-CH14-ID254

struct MyStructure {
    lazy var aLazyVariable = 10; // lazy can not be applied for let's
}

struct Person {
    var clothes: String {
        willSet {
            updateUI("I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI("I just changed from \(oldValue) to \(clothes)")
        }
    }
    
    var pants: Int = 0;
//        {
//        willSet{
//            
//        }
//        
//        didSet{
//            
//        }
//    }
    
    func updateUI(_ msg: String)
    {
        print(msg)
    }
}

class Properties: NSObject
{
    
    static var favoriteSong = "Shake it Off"
    
    var name: String = ""
    var age: Int = 0
    
    func aMethod()
    {
        let fan = Properties()
        print(fan);
        print(Properties.favoriteSong)
        
        //        print(fan.favoriteSong); //Error static member can not be used on instance type
    }
    
    class func bMethod()
    {
        print(bMethod)
//        print(age); // Error
    }
    
    static func aStaticMethod()
    {
        print(aStaticMethod)
//        print(age); // Error instance var in class method
    }
    
    
    func playWithProperties()
    {
        var myStrict = MyStructure()
        print(myStrict);
        print(myStrict.aLazyVariable)
        
        var taylor = Person(clothes: "T-shirts", pants: 89)
        
        taylor.clothes = "short skirts"
        
        let fan = Properties()
        print(Properties.favoriteSong)
        Properties.favoriteSong = "Bla Bla"
        aMethod();
        
    }
}
//
//struct Person {
//    var clothes: String {
//        willSet {
//            updateUI("I'm changing from \(clothes) to \(newValue)")
//        }
//        
//        didSet {
//            updateUI("I just changed from \(oldValue) to \(clothes)")
//        }
//    }
//}


class Person1
{
    var aStoredProperty: Int = 20;
    var clothsWeight: Float = 0.0
    var totalWeight: Float = 0.0
    var weight: Float
        {
            get
            {
                return totalWeight - clothsWeight;
            }
//        set
//        {
//            print(newValue);
//            
//        }
        }
}
