//
//  Functions.swift
//  SwiftStartsHere
//
//  Created by apple on 20/05/16.
//
//

import Foundation

class Functions: NSObject
{
    /*
     Definition: Function is a reusable block of code, that contains a name, that can be called from many parts of the program
     Syntax: func functionName(variableName1: Datatype, varName2: Datatype) -> ReturnType
     Ex:  func sumOfTwoNumbers(firstNumber: Int, secondNumber: Int) -> Int
     Functiona may or many not have input arguments and return type
     */
    
    func playWithFunctions()
    {
        self.methodWithNoInputNoReturn();
        
        self.methodWithSingleInputArgAndNoReturn("Devendranath")
        
        self.methodWithMultipleArgsAndNoReturn("Devendranath", phNo: 9742735256)
        
        
        let result1 = self.methodWithNoInputWithReturn()
        print(result1)
        
        let result2 = self.methodWithSingleInputWithReturn("Devendranath")
        print(result2)
        
        let result3 = self.methodWithMultipleArgsWithReturn("Devendranath", phNo: 9642335080);
        print(result3)
        
        let optResult = self.methodWithOptionalInputAndOptionalReturn(nil);
        print(optResult)
        
        let tupleResult = self.methodWithTupleInputAndTupleReturn((10,20))
        print(tupleResult);
        
        self.methodWithVariableNumberOfArgs("Swift");
        self.methodWithVariableNumberOfArgs("Swift", "Objective-C");
        self.methodWithVariableNumberOfArgs("Swift", "Objective-C", "Swift-C");
        
        var aVar = 10;
        var bVar = 20;
        self.methodWithValuesAsInputs(aVar, bVar: bVar)
        print(aVar)
        print(bVar)
        
        self.methodWithReferencesAsInputs(&aVar, bVar: &bVar)
        print(aVar)
        print(bVar)
        
        self.outerFunction()
        
        self.methodWithDefautValue()
        self.methodWithDefautValue("Reddy")
        
        var name1 = "Mr. Potato"
        var name2 = "Mr. Roboto"
        
        valueSwap(&name1, value2: &name2)
        
        var number1 = 2
        var number2 = 5
        
        valueSwap(&number1, value2: &number2)
        
        nestedFunction(1);
        
        // Some more
        
        sayHello()
        sayHello(to: "Obama");
        addition(10, bValue: 20);
        subtract(20, with: 10, and: 10.50);
        let aTuple = returnsTuple();
        print(aTuple.0);
        print(aTuple.1);
        print(aTuple.firstValue);
        print(aTuple.secondValue);
        
        let result: Int? = optionalReturnMethod(10);
        
        var a = 20;
        var b = 40;
        swapTwoInts(&a, b: &b);

        print(a);
        print(b);
        
    }
    
    //====================================================
    
    func methodWithNoInputNoReturn() -> Void
    {
        print("Hello, world!");
    }
    
    func methodWithSingleInputArgAndNoReturn(name: String)-> Void
    {
        print("Hello \(name)");
    }
    
    func methodWithMultipleArgsAndNoReturn(name: String, phNo: Int) -> Void
    {
        print("Hello! I am \(name), my Phone Number is : \(phNo)")
    }
    
    func methodWithNoInputWithReturn() -> String
    {
        return "Hello World!";
    }
    
    func methodWithSingleInputWithReturn(name: String) -> String
    {
        return "Hello \(name)";
    }
    
    func methodWithMultipleArgsWithReturn(name: String, phNo: Int) -> String
    {
        return "Hello! I am \(name), my Phone Number is : \(phNo)"
    }
    
    func methodWithOptionalInputAndOptionalReturn(aValue: Int?) -> Int?
    {
        if let inValue = aValue
        {
            return inValue * 10;
        }
        else
        {
            return nil;
        }
    }
    
    func methodWithTupleInputAndTupleReturn(inTuple: (firstValue: Int, secondValue: Int)) -> (firstValue: AnyObject, secondValue: AnyObject)
    {
        return (inTuple.secondValue, inTuple.firstValue);
    }
    
    // Variadic Parameters
    func methodWithVariableNumberOfArgs(inputs: String...)
    {
        print(inputs);
    }
    
    /*
     NOTE: By default input arguments are constants. We can't modify the value of input arguments.
     Use var to modify input arguments.
     Swift 3 Use inout only. var is removed as input arguments
     inout parameters can't be lets.
     
     */
    
    func methodWithValuesAsInputs(var aVar: Int, var bVar: Int)
    {
        aVar = 20;
        bVar = 30;
    }
    
    func methodWithReferencesAsInputs(inout aVar:Int, inout bVar: Int)
    {
        aVar  = 20;
        bVar = 30;
    }
    
    func outerFunction()
    {
        print("Outer");
        func innerFunction()
        {
            print("Inner")
            func innerInnerFunction()
            {
                print("Inner Inner")
            }
            innerInnerFunction()
        }
        innerFunction()
    }
    
    func methodWithDefautValue(name: String = "Dev")
    {
        print("Hello \(name)");
    }
    
    /*
     GENERIC PARAMTER TYPES
     You can make a function accept parameters of different types while making sure that
     both parameters are of the same type
     */
    func valueSwap<Int>(inout value1: Int, inout value2: Int)
    {
        let oldValue1 = value1
        value1 = value2
        value2 = oldValue1
    }
    
    // NESTED FUNCTIONS
    
    func nestedFunction(someNumber: Int)
    {
        func increment( someNumber: Int) -> Int
        {
            return someNumber + 10
        }
        
        let incrementedNumber = increment(someNumber)
        print("The incremented number is \(incrementedNumber)")
    }
    
    // Function with no input args and no output
    func sayHello() -> Void
    {
        print("Hello");
    }
    // Function with one input args and no output
    func sayHello(to person: String) -> Void
    {
        print("Hello \(person)");
    }
    
    // Function with two input args and Int reuturn value
    func addition(aValue: Int, bValue: Int) -> Int
    {
        return aValue + bValue;
    }
    
    // Function with Three input args and Int reuturn value
    func subtract(aValue: Int, with bValue:Int, and cValue:Float) -> Int
    {
        return aValue - bValue - Int(cValue);
    }
    
    func returnsTuple() -> (firstValue: Int, secondValue: Int)
    {
        return (10, 10);
    }
    
    func optionalReturnMethod(var input: Int)-> Int?
    {
        input++;
        
        if input <= 1
        {
            return 0;
        }
        return nil;
    }
    
    func swapTwoInts(inout a: Int, inout b: Int) {
        let temporaryA = a
        a = b
        b = temporaryA
        
    }
}
