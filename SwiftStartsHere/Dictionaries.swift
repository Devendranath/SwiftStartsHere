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
    /*
     Def: UnOrdered Collection of Similar Type Keys and Any Type Value pairs. Values can be duplicate but keys must be unique. These keys are used as identifiers while accessing elements
     The values stores in a Dictionary must conforms to Hashable protocol as Sets
     Operations:
     
     Creating Dictionaries
     Finding number of pairs in Dictionary
     Comparing Two Dictionaries
     Accessing Perticular Elements based on the key
     Adding an Element to an existing Dictionary
     Adding two dictionaries
     Iterating through Dictionary
     Replacing an Object with another
     Adding Key-Value pairs to a Dictionary
     Accessing all keys / values from Dictionary as Collection
     Remove all Pairs from Dictionary
     */
    
  func playWithDictionaries()
  {
    // Creating Dictionaries
    let anEmptyDict = [String:String]()
    
    let aDictionary: Dictionary = ["Key1":"Value1", "Key2": "Value2", "Key3" : "Value3"]
    
    var aDict: [String:String] = ["Key1":"Value1", "Key2": "Value2", "Key3" : "Value3"]
    
//    var newDict: Dictionary<String : String> = ["Key1":"Value1", "Key2": "Value2", "Key3" : "Value3"] // Swift 3
    
    let o = [1: "Ste", 2: [1,2,3]] as [Int : Any]
    
    let bDict: [Int : String] = [1:"One", 2 : "Two"]
    
    print("Number of pairs in dict: \(aDict.count)")
    
    // Replaces / Adds New pair to a Dictiopnary
    aDict["Key4"] = "Value4";
    print("Elements in dict : \(aDict)");
    
    // Fetching a value for a Given key
    print("Value for Key :Key3 \(aDict["Key3"])")
    
    // Overriding existing value for given key
    aDict.updateValue("Value44", forKey: "Key4");
    print("Elements in dict : \(aDict)");
    
    // Finding all keys / values of Dictionary
    print("Displaying all Keys: \(aDict.keys)")
    print("Displaying all Keys: \(aDict.values)")
    
    // Enumerating through Dictionary
    for (key, value) in aDict
    {
        print("\(key) : \(value)");
    }
    
    let cDict = ["One" : "1", "Two" : "2"]
    // Adding two dictionaries
    for (key, value) in cDict
    {
        aDict[key] = value
    }
    
    print("Value : \(aDict["Key1"])");
    
    // Comparing Two Dictionaries
    if aDict == aDict
    {
        print("Two dictionaries are equal");
    }
    
    // Removing a Key-Value pair from a Dictionary
    aDict.removeValue(forKey: "Key1");
    aDict["Key3"] = nil;
    // Removing all Objects from Dictionary
    aDict.removeAll()
    
    
    }
}
