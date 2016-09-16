//
//  SwiftKeywords.swift
//  PlayWithSwift
//
//  Created by Reddy, Devendar on 17/04/1938 Saka.
//  Copyright © 1938 Saka Reddy, Devendar. All rights reserved.
//

import Foundation

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
    
    func optionalBinding(aVar: Int?)
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
    
    func guardKeyword(aVar: Int)
    {
        guard aVar > 0
            else
            {
                print(aVar)
                return
            }
        print("aVar can be used here: \(aVar)")
    }
    
    func guardKeywordWithOptional(aVar: Int?)
    {
        guard let unwrappedVarOne = aVar else
        {
            print(" aVar has no value")
            return;
        }
        
        guard let unwrappedVarTwo = aVar where aVar > 0 else
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
