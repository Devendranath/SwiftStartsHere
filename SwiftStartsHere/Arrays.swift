//
//  Arrays.swift
//  SwiftStartsHere
//
//  Created by apple on 19/05/16.
//
//

import Foundation
class Arrays
{
    
    /*
     Def: Array is collection of Similar / Dissimilar values (Objects / Premitives)
     
     Operations:
     
     Creating Arrays
     Counting number of elements in an array
     Finding the object at given Index
     Comparing two arrays
     Iterating through Array Elements
     Adding elements to an array
     Inserting an Element at given index
     Adding two arrays
     Check object existence in an array
     Replace object at given index
     Accessing last object of the array
     Remove Object at given index
     Remove Objects in Range
     Remove all Objects
     Reversing an Array
     Finding the index of Element
 */
    
    
    func playWithArrays()
    {
        let anEmptyIntArray = [Int](); // Creating an Empty array
        
        var eArray = Array<Int>();  // Another way to create an Empty Array
        
        
        let aDifferentValueArray = [1, "Two", 3.3, "C"]
        
        let aDubplicateArray = [1, 2, 3, 1, 2, 3]
        
        var anArray = [1,2,3,4,5]; // Default different value array
        
        let similarToAnArray:[Int] = [1,2,3,4,5]; // Specifying a Type of array
        
        
        let bArray: Array<Float> = [12.12, 12,22, 12,34]; // Specifying a Type of array
        
        let similarToBArray: [Float] = [12.12, 12,22, 12,34]; // Specifying a Type of array
        
        let cArray = [11, 12, 13, 14, 15, 17]
        
        //let anErrorArray: [String] = [1, "Two"] // ERROR: Expected Strings
        
        print("Number of elements in an Array \(anArray.count)")
        
        print("Object at given index 2: \(anArray[2])")
        
        // Iterating through Array elements
        for item in anArray
        {
            print(item);
        }
        
        for (index, item) in anArray.enumerate()
        {
            print("\(item) is at index: \(index)");
        }
        
        if anArray == aDubplicateArray
        {
            print("Two arrays are equal")
        }
        else
        {
            print("Two arrays are not equal")
        }
        
        // Adding new element to an Array
        anArray.append(6); // 1,2,3,4,5,1
        print(anArray) // 1,2,3,4,5,6
        
        anArray.insert(0, atIndex: 0);
        print(anArray); // 0,1,2,3,4,5,6
        
        // Inserting multiple objects at given index
        anArray.insertContentsOf(cArray, at: anArray.count)
        print(anArray); //0,1,2,3,4,5,6,11,12,13,14,15,17
        
        if anArray.contains(11)
        {
            print("Element 11 exists in anArray: \(anArray)")
        }
        
        //Replacing object at given index 12
        anArray[anArray.count - 1] = 16
        print(eArray);//0,1,2,3,4,5,6,11,12,13,14,15,16

        // Finding the index of the element
        print("Index of :1 is : \(anArray.indexOf(1))")
        // Reversing an Array Elements
        print(anArray.reverse());        
        anArray.removeLast(); // Removes last element
        anArray.removeFirst() // Remove first element
        anArray.removeAtIndex(1) //  Removes the 2nd element of an Array
        anArray.removeFirst(3); // Removes first 3 elements
        anArray.removeRange(1...5); // Removing objects in Range
        anArray.removeAll() // Removes all objects
        print(anArray);
    }

}

