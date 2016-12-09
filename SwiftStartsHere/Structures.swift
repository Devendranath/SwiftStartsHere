//
//  Structures.swift
//  SwiftStartsHere
//
//  Created by apple on 21/05/16.
//
//

import Cocoa

struct Resolution {
    var width = 0
    var height = 0
    func description()
    {
        print("width :\(width) and height: \(height)")
    }
}

class Structures: NSObject
{
    struct MyCustomDatatype {
        var aIntVar = 0;
        var aCharVar: Character?;
        var aStringVar: String?;
        
        func aStrMethod()
        {
            print("This is structure method");
        }
        
        // Only used in classes
//        deinit
//        {
//            
//        }
    }
    
    // Structures can not be inherited
    
//    struct InheritedStructure: MyCustomDatatype
//    {
//        var cInt = 0
//    }
    
    func playWithStructures()
    {
        let aRes: Resolution = Resolution()
        
        let aStrVar = MyCustomDatatype(aIntVar: 10, aCharVar: "C", aStringVar: "This is Structure");
        var bStrVar = MyCustomDatatype();
        
        bStrVar.aIntVar = 200;
        bStrVar.aCharVar = "D"
        bStrVar.aStringVar = "This is bStrVar";

        print(aStrVar);
        print(bStrVar);
        aStrVar.aStrMethod();
    }
    
    func a()
    {
        
    }
    
    deinit
    {
        
    }
    
    
    
    struct Point {
        var x = 0.0, y = 0.0
        mutating func moveBy(x deltaX: Double, y deltaY: Double) {
            x += deltaX
            y += deltaY
        }
        
        mutating func bla()
        {
            
            x = 10;
            
        }
    }
    
    
    func mutateStruct()
    {
        var somePoint = Point(x: 1.0, y: 1.0)
        somePoint.moveBy(x: 2.0, y: 3.0)
        print("The point is now at (\(somePoint.x), \(somePoint.y))")
        // Prints "The point is now at (3.0, 4.0)"
    }
    
    
}

/*
 
 COMPARING CLASSES AND STRUCTURES
 
 Classes and structures in Swift have many things in common. Both can:
 
 Define properties to store values
 Define methods to provide functionality
 Define subscripts to provide access to their values using subscript syntax
 Define initializers to set up their initial state
 Be extended to expand their functionality beyond a default implementation
 Conform to protocols to provide standard functionality of a certain kind
 For more information, see Properties, Methods, Subscripts, Initialization, Extensions, and Protocols.
 
 Classes have additional capabilities that structures do not:
 
 Inheritance enables one class to inherit the characteristics of another.
 Type casting enables you to check and interpret the type of a class instance at runtime.
 Deinitializers enable an instance of a class to free up any resources it has assigned.
 Reference counting allows more than one reference to a class instance.

 */

/*
 Q1. Can we use lazy modifier in Structure / Enums
 */





