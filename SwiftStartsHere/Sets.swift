//
//  Sets.swift
//  SwiftStartsHere
//
//  Created by apple on 19/05/16.
//
//

import Foundation

class Sets
{
 
    func playWithSets()
    {
    
        var aSet: Set<String> = ["One", "Two", "Three", "Four", "Five", "z"];
        
        let bSet = aSet;
        
        print("Number of elements in set : \(aSet.count)"); // 5
        
        // Comparision
        if aSet == bSet
        {
            print("aSet and bSet are equal");
        }
        
        // Existence check
        let isExisting = aSet.contains("Four");
        if isExisting
        {
            print("Value Five is existing in aSet");
        }
        else
        {
            print("Value Five is not existing in a set");
        }
        
        // Inserting an element
        
        aSet.insert("New Element")
        print(aSet); // ["Five", "Two", "One", "Three", "Four", "New Element"]
        
        
        // Empty Check
        
        if aSet.isEmpty
        {
            print("aSet is empty");
        }
        
        // Joining all elements into a string
        print(aSet.joinWithSeparator(" ")); // Five Two One Three Four New Element

        print(aSet.maxElement()); // Z
        
        // Removing perticular element
        aSet.remove("One");
        
        // Sorting
        print(aSet.sort()); // ["Five", "Four", "New Element", "Three", "Two", "z"]
        
        // Enumerating through collections
        for item in aSet
        {
            print(item);
        }
        
        let cSet: Set<String> = ["1", "2", "3", "4", "5", "6"];
        let dSet: Set<String> = [ "4", "5", "6", "7", "8", "9"];
        
        print(cSet.subtract(dSet)); // 1, 2, 3
        
        print(cSet.union(dSet)); // 1, 2, 3, 4, 5, 6, 7, 8, 9
        
        print(cSet.intersect(dSet)); // 4, 5, 6
        
        print(cSet.exclusiveOr(dSet)); //1, 2, 3, 7, 8, 9
        
        
    }
}