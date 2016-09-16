//
//  Closures.swift
//  SwiftStartsHere
//
//  Created by apple on 21/05/16.
//
//


class Closures: NSObject
{
   func playWithClosures()
   {
    // SYNTAX
//    { (arg1, arg2) -> ReturnType in
//        //Statements
//    };
    
    let aEmptyClosure = {
        print("This is empty closure");
    }
    
    aEmptyClosure();
    
    
    let aSingleParamClosure = {(arg1: Int) -> Void in
        print("Input argumet passed to this closure is : \(arg1)");
    }
    
    aSingleParamClosure(10);
    
    
    let aMultiParamClosure = { (name: String , age: Int) -> String in
        return "I am \(name) and age is \(age)";
    }
    
    let mine = aMultiParamClosure("Modi", 65);
    
    print(mine);
    }
}
