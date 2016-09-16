//
//  Dictionaries.swift
//  SwiftStartsHere
//
//  Created by apple on 19/05/16.
//
//

import Foundation

class Dictionaries: NSObject
{
  func playWithDictionaries()
  {
    var aDict = ["Key1":"Value1", "Key2": "Value2", "Key3" : "Value3"];
    
    print("Number of pairs in dict: \(aDict.count)")
    
    aDict["Key4"] = "Value4";
    
    print("Elements in dict : \(aDict)");
    
    aDict.updateValue("Value44", forKey: "Key4");
    
    print("Elements in dict : \(aDict)");
    
    print("Displaying all Keys: \(aDict.keys)")
    print("Displaying all Keys: \(aDict.values)")
    
    // Enumerating
    for (key, value) in aDict
    {
        print("\(key) : \(value)");
    }
    print("Value : \(aDict["Key1"])");
    
    if aDict == aDict
    {
        print("Two dictionaries are equal");
    }
    
    aDict.removeValueForKey("Key1");
    
    var aArray: [Int] = [1,2,3,4,5];
    
    (aArray as NSArray).objectAtIndex(0);
    
    var bDict: [String : String] = ["1":"Value1", "2": "Value2", "3" : "Value3"];
    (bDict as NSDictionary).valueForKey("1");
    
    var aStr: NSString = "A Obj-C String"
    print("Length of the string\(aStr.length)");
    
    }
}