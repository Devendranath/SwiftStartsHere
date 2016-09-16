//
//  Extensions.swift
//  SwiftStartsHere
//
//  Created by apple on 28/05/16.
//
//

import Foundation

extension String
{
    public var lowercaseString: String
    {
        return "some string";
    }
    
//    private var _foo:Int = 0
//
    var extPropertyOne: Int{
        get{
            return self.extPropertyOne;
        }
        set{
            extPropertyOne = newValue;
        }
    };
    
    func newMethodInString(sampleString: String) -> Void
    {
        
    }
    
}


extension String{
    var newExtProperty: String
        {
            return self.newExtProperty;
    }
    
    func aNewMethod()
    {
        print("This is new method added through Extensions")
    }
}

class Extensions: NSObject
{
   func playWithExtensions()
   {
    var aString: String = "Hello";
    
    aString.aNewMethod();
//    aString.newExtProperty = "This is new property";
    aString.aNewMethod()
    
    
        var sExtString = String()
        sExtString.newMethodInString("Hmm");
//        sExtString.extPropertyOne = 10;
        print(sExtString.lowercaseString)
    }
}