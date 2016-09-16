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
    }
    
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
}





