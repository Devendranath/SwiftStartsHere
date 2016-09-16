//
//  Classes.swift
//  SwiftStartsHere
//
//  Created by apple on 21/05/16.
//
//

import Foundation

/*
 Def: Class is a combination of properties and functions. Use class keyword to create a class
 NSObject is the Root class in Swift. NSObject class contains basic infrastructure to create object and memory management related stuff
 Syntax:
 class ClassName: SuperClass
 {
        property declarations
        methods definations
 }
 
 // Use init method to customize the instance. If we don't define init, Runtime system uses default init method.
 // Use deinit method to dispose the instane.
 
 init and deinit are optional methods.
 */


class First: NSObject
{
    let propertyOne: Int = 10
    let propertyTwo: Float = 20;
    let propertyThree: String?
    
    override init() {
        self.propertyThree = "You must initilize all peroperties if you override init method"
    }
    
    func methodOne()
    {
        print(propertyOne)
        print(propertyTwo)
        print(propertyThree)
    }
}

class SuperClass: NSObject
{
    let supVarOne = 10;
    let supVarTwo = 12.12
    
    func supMethodOne()
    {
        print("This is Supermost class method One")
        SuperClass.aClassMethodOne()
        SuperClass.aClassMethodTwo()
    }
    
    func supMethodTwo()
    {
        print("This is Supermost class method Two")
        sayHello(to: "Modi", and: "Advani");
    }
    
    func sayHello(to aPerson: String, and anotherPerson:String)
    {
        print("Hello \(aPerson), \(anotherPerson)")
    }
    
    class func aClassMethodOne()
    {
        print("This is a class method")
    }
    
    class func aClassMethodTwo()
    {
        print("This is a class method")
    }
}

class Sub : SuperClass
{
    let subVarOne = 11
    let subVarTwo = 12
    
    func aClassMethodOne()
    {
        print(aClassMethodOne)
    }
    
    func aClassMethodTwo()
    {
        print(aClassMethodTwo)
        super.supMethodOne();
    }
    
    override func supMethodOne()
    {
        print("Overriding super class method");
    }
}


//class MyClassInAnotherFile: NSObject
//{
//    let accessObj = AccessSpecifiers()
//    // Only public and internal kind of variables and methods are accessable in another class in different file
//    func tryAccessingVariables()
//    {
//        print(accessObj.aPublicVar)
//        print(accessObj.aPrivateVar) // Error, private variables are not access able another class which is declared in different file
//        print(accessObj.aInternalVar);
//        
//        func tryAccessingMethods()
//        {
//            accessObj.aPublicMethod()
//            accessObj.aPrivateMethod() // Error: Private methods can be accessed
//            accessObj.aInternalMethod()
//        }
//    }
//}



