//
//  SwiftKeywords.swift
//  PlayWithSwift
//
//  Created by Reddy, Devendar on 17/04/1938 Saka.
//  Copyright © 1938 Saka Reddy, Devendar. All rights reserved.
//

import Foundation
// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


class SwiftKeywords: NSObject
{
    func playWithSwiftKeywords()
    {
        optionalBinding(nil)
        optionalBinding(10)
        
        guardKeyword(0)
        guardKeyword(10)
        
        guardKeywordWithOptional(nil)
        guardKeywordWithOptional(20)
    }
    
    func optionalBinding(_ aVar: Int?)
    {
        if let unwrappedVar = aVar
        {
            print("\(unwrappedVar) has value");
        }
        else
        {
            print("aVar has no value");
        }
        print("Can't access unwrappedVar here")
    }
    
    func guardKeyword(_ aVar: Int)
    {
        guard aVar > 0
            else
            {
                print(aVar)
                return
            }
        print("aVar can be used here: \(aVar)")
    }
    
    func guardKeywordWithOptional(_ aVar: Int?)
    {
        guard let unwrappedVarOne = aVar else
        {
            print(" aVar has no value")
            return;
        }
        
        guard let unwrappedVarTwo = aVar, aVar > 0 else
        {
            print(" aVar has no value")
            return;
        }        
        print("You can access \(unwrappedVarOne), \(unwrappedVarTwo)")
    }
    
    
    /*
     Definition: Process of assigining a different name to an datatype is known as typealias. 
     Ex: 
     i. Int to SmallInt
     ii. String to Text
     */
    typealias SmallInt = Int
    typealias Text = String
    
    func playWithTypeAlias()
    {
        let aVar: SmallInt = 10;
        let bVar: SmallInt = 20;
        print((aVar + bVar));
        
        let aString: Text = "Some Text"
        
        print("\(aString) is a type of Text and internally it is String")
    }
}
