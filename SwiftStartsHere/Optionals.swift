//
//  Optionals.swift
//  SwiftStartsHere
//
//  Created by Reddy, Devendar on 9/15/16.
//
//

import Foundation
class Optionals
{
    /*
     OPTIONALS:
     Defination: An optional value either contains a value or contains nil (no value) to indicate that a value is missing
     When to use: If we are not gaurantee that a variable may or may not comntain the value.
     How to declare a optional variable: use ? (Question mark) after the datatype declaration
     Ex: var anOptionalInt: Int?
     
     Optional unwrapping: The process of getting the underlying value of optional variable
     Force unwrapping (!): Use force unwrap operator (!) to access underlying value of the optional variable. 
     Note: Use force unwrap when you are sure that the optional variable contains a non nil value. 
     Using force unwrap operator over nil optional variable leads to bad results while performing operations
     
     Warning: Make sure the optional variable have the value before performing any operation over it. Else it leads to bad results
     
     Implecitly Unwrapped Optional: An implicitly unwrapped optional is an optional that can also be used like a nonoptional value, without the need to unwrap the optional value each time it’s accessed. This is because an implicitly unwrapped optional is assumed to always have a value after that value is initially set, although the value can change. Implicitly unwrapped optional types are indicated with an exclamation mark (!) instead of a question mark (?).
     
     let anImplicitOptional: Int!
     
     */
    
    func playWithOptionals() -> Void
    {
        var anOptionalInt: Int? // We are taking aInt is an optional because the string may or may not contain valid integer value, If the string doesn't contain valid integer value it returns nil. To point nil we are declaring aInt as optional
        
        let aCasualInt = 10;
        
        var nonIntString = "This is non int string";
        anOptionalInt = Int(nonIntString); // nil
        var sum = 0;
//        sum = anOptionalInt! + aCasualInt; // Causes error, since anOptionalInt doesn't contain non nil value.
        print(sum)
        
        let intString = "123"
        anOptionalInt = Int(intString) // 123
        sum = anOptionalInt! + aCasualInt; //
        print(sum)
        
        
        
        // OPTIONAL BINDING
        
        // Def: Process of checking the value existence of an optional variable before performing an operation
        //Warning: Better performing optional binding before performing operations on Optional variables. It avoids unnecessary runtime crashes
        
        nonIntString = "1";
        anOptionalInt = Int(nonIntString); // nil
        sum = 0;
        if let valueInOptional = anOptionalInt
        {
            sum = valueInOptional + aCasualInt; // Causes error, since anOptionalInt doesn't contain non nil value.
            print("Sum is : \(sum)");
        }
        
        let implicitUnwrapOptional: Int!
//        sum = implicitUnwrapOptional + anOptionalInt!; //Error: ImplicitUnwrapOptional must be initilized before it is used.
        implicitUnwrapOptional = 20;
        
        if let valueInOptional = anOptionalInt,let valueInImplicitOptional = implicitUnwrapOptional
        {
            sum = valueInOptional + valueInImplicitOptional; // Causes error, since anOptionalInt doesn't contain non nil value.
            print("Sum is : \(sum)")
        }
        print(sum);
        
        // nil coalescing operator(??):
        //nil coalescing operator is used to wrap an optional and check if it is not nil. if it is nil, provide a default value. See below example
        
        let aNonIntString = "I won't be converted to string"
        anOptionalInt = Int(aNonIntString)
        var aDefaultValue = 100
        
        var unwrapValue = (anOptionalInt) ?? aDefaultValue
        print(unwrapValue) // 100
        
        let aProperIntString = "12345"
        anOptionalInt = Int(aProperIntString)
        aDefaultValue = 100
        
        unwrapValue = (anOptionalInt) ?? aDefaultValue
        print(unwrapValue) // 12345
        
        // OPTIONAL CHAINING:
        // Def: Process of accessing optional variable's properties, methods and subscripts called as optional chaining. 
    }
}
