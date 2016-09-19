//
//  Datatypes.swift
//  SwiftStartsHere
//
//  Created by apple on 18/05/16.
//
//

/*

*/
import Foundation

class Datatypes
{
    /*
    DATATYPE: Datatype specifies to compiler that what kind of value the variable stores
    Swift provided following datatypes
    Int : stores integer values
    Float: Stroes floating point values
    Double: Stores long precession float values 
    Character: Stores single character
    Bool : Stores true / false values
    String: Stores Textual data
    Array: Stores collections of similar or desimillar objects or primitive datatypes 
    Dictionaries: Stores Key - value pairs
    Set: Stores objects or primitive datatypes as unordered collection of elements
    AnyObject: Stores any kind of value
    */
    
    /*
    CONSTANTS - VARIABLES
    Constant: The identifier whose value doesn't change. use let to create constants
    Variable: The identifier whose value can be modifies. Use var to create variables
    */
    
    
    /*
    TYPE ANNOTATION:
    The process of explecitly specifying the type of declared Identifier (constant/variable)
    */
    
    func playWithDatatypes() -> Void
    {
        let aVar: Int = 10; // Initilizing aVar variable with value 10
        var bVar: Int! // Specifyning to compiler that bVar contains a value
        var cVar: Int? // Specifying to compiler that cVar may or may not have a value (called optional)
        var dVar = 10;
        //var eVar   // ERROR: Must specify a Datatype/Value while declaring a variable/constant
        
        var anyObj: AnyObject = 20;
        anyObj = "anyObj was holding Int(20), now it is holding String"
        
        let aConst: Int = 20;
        //aConst = 50; // ERROR: constant values can not be modified
        
        print("----------DATATYPES IN SWIFT----------")
        print("Void -- Int -- Float -- Double -- Character -- Bool -- AnyObject -- String -- Array -- Dictionary -- Set")
  
        /*
        i. Must specify a datatype/value while declaring a variable (let aVar: Datatype)
        ii. Variable/constant must have a value before it is used.
        iii. Implecit typecase doesn't work in swift
        iv. Use let to declare constants
        v. Use var to delcare variables
        */
        
        // ERROR: Variables used before being initialized
        // TIP: Variables must be declared before they are used
        // print(aIntConst)
        // print(aIntVariable);
        
        let aIntConst: Int = 20;
        let aIntVariable: Int = 20;

        print(aIntConst)
        print(aIntVariable)
        
        var aFloat: Float = 12.12
        var aDouble: Double = 11.11
        print(aFloat + Float(aDouble))        
        
        let aCharacter = "a"
        print("ASCII Value of a is \(aCharacter.unicodeScalars.first?.value)");
        
        // SIZE of the given Datatype. Use sizeof() method to get the size of the given datatype
        print(sizeof(Int))   // 8-Bytes
        print(sizeof(Int8))  // 1-Byte
        print(sizeof(Int16)) // 2-Bytes
        print(sizeof(Int32)) // 4-Bytes
        print(sizeof(Int64)) // 8-Bytes
        
        print(sizeof(Float)) // 4-Bytes
        print(sizeof(Character)) // 9-Bytes
        print(sizeof(String))    // 24-Bytes
        print(sizeof(Double))    // 8-Bytes
        print(sizeof(Bool))    // 1-Byte
        
        
        let test : String = "A";
        let bytes : NSInteger =   test.lengthOfBytesUsingEncoding(NSUTF8StringEncoding);
        NSLog("%i bytes", bytes);
      }
}

/*
 
 Tasks:
 i. What are the different datatypes availabel in swift
 
 */