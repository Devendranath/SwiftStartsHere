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
    /*
     Def: Set is a collection of ANY DATATYPE non-dupliate values and these are stored in undefined order
     
     A set stores distinct values of the same type in a collection with no defined ordering. You can use a set instead of an array when the order of items is not important, or when you need to ensure that an item only appears once.
     To Store a Value is Set, It must be hashable
     
     Operations:
     Creating Sets
     Finding number of Elements in a Set
     Comparing Two Sets
     Accessing Set's Elements
     Checking the existence of an Element
     Creating a Set from Array
     Empty Check
     Inserting an element in a Set
     Removing an Element from a Set
     Performing Set operations ()
     Removing all Objects
     
     */
    func playWithSets()
    {
        var anEmptySet = Set<String>()
        
        var aSet: Set<String> = ["One", "Two", "Three", "Four", "Five", "z"];
        
        let aArray:[Int] = [1,2,3,4,5,5,5]
        
        let setFromArray = aArray;
        
        print(setFromArray)
        
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
        print(aSet.joined(separator: " ")); // Five Two One Three Four New Element

        print(aSet.max()); // Z
        
        // Removing perticular element
        aSet.remove("One");
        
        // Sorting
        print(aSet.sorted()); // ["Five", "Four", "New Element", "Three", "Two", "z"]
        
        // Enumerating through collections
        for item in aSet
        {
            print(item);
        }
        
        let cSet: Set<String> = ["1", "2", "3", "4", "5", "6"];
        let dSet: Set<String> = [ "4", "5", "6", "7", "8", "9"];
        
        print(cSet.subtracting(dSet)); // 1, 2, 3
        
        print(cSet.union(dSet)); // 1, 2, 3, 4, 5, 6, 7, 8, 9
        
        print(cSet.intersection(dSet)); // 4, 5, 6
        
        print(cSet.symmetricDifference(dSet)); //1, 2, 3, 7, 8, 9
        
        // Removing all objects
        aSet.removeAll()
        
    }
}
