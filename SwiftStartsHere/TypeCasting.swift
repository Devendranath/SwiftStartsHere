//
//  TypeCasting.swift
//  SwiftStartsHere
//
//  Created by Reddy, Devendar on 9/15/16.
//
//

import Foundation
class TypeCasting: NSObject
{
    

    /*
        Definition: The process of converting datatype of one variable / constant to another datatype
     
     Implecit Type casting: The process of converting datatype of variable / constant's to anoter without using any additional logic
     
     Explicit Type Casting: The process of converting datatype of variable / constant's to anoter by using any additional logic.
     Syntax: 
     let destinationDatatype = destinationDatatype(sourceDatatype variable)
     
     let Int = Int(aFloatVariable)
     
     NOTE: Swift doesn't allow implicit type casting
     */
    
    func playWithTypeCasting() -> Void
    {
        var aInt:Int = 10
        var aFloat: Float = 12.12
        var aDouble: Double = 12.12
        var defaultDouble = 21.12212; // By default, floats are Doubles
        var aChar: Character? = "1"
        var aString: String = "1"
        
        
        // TO INT CONVERSION
        
        //        aInt = aFloat // No implicit conversition works
        //        aInt = aDouble; // No implicit conversition works
        //        aInt = aString // No Implicit  conversion allowed
        //        aInt = aChar // No Implicit conversion allowed
        
        aInt = Int(aFloat)    // 12
        aInt = Int(aDouble)   // 12
        aInt = Int(aString)!  // 123
//      aInt = Int(aChar) //  No Explicit conversion allowed
        
        
        // TO FLOAT CONVERSION
        
       /* 
         aFloat = aInt
         aFloat = aDouble
         aFloat = aChar
         aFloat = aString
       */
        
        aFloat = Float(aInt)   // 123
        aFloat = Float(aDouble) // 12.1199999
//        aFloat = Float(aChar) // No Explicit Conversion too
        aFloat = Float(aString)! //123

        // TO CHARACTER Conversion
        /*
         aChar = aInt
         aChar = aFloat
         aChar = aDouble
         aChar = aString
        */
        
//        aChar = Character(aInt)    // Not Allowed
//        aChar = Character(aFloat)  // Not Allowed
//        aChar = Character(aDouble) // Not Allowed
        aChar = Character(aString)   // Works perfect if the aString contains only one character else leads to bad results

        // TO Strings
        /*
         aString = aInt
         aString = aFloat
         aString = aDouble
         aString = aChar
         */
        
        aString = String(aInt)
        aString = String(aFloat)
        aString = String(aDouble)
        aString = String(aChar)
        
        // Conversion of Characters
        var newInt = 1;
        var newChar: Character = "C"
        newChar = Character(String(newInt)) // "1"
        newInt = Int(String(newChar))! // 1
        
    }
}

/*
 QUESTIONS
 1. Does swift allows implicit typecasting?
 Ans: NO
 
 2. Can we convert Character to Int conversion in Swift? 
 Ans: It is not possible in a Generic way (Int(Character)), but can be done using Charater -> Sting -> Int
 */