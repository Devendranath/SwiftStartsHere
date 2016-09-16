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
    func playWithArrays()
    {
        var anArray = [1,2,3,4,5];
        
        let bArray: Array<Float> = [12.12, 12,22, 12,34];
        
        let cArray = [Int](); // Creating an Empty array
        
        let dArray:[Int] = [1,2,3,4,5];
        
        var eArray = Array<Int>();
        
        eArray.append(1);
        
        
        print(eArray)
        
        
        
        
        print(anArray);
        
        print(bArray);
        
        print(cArray);
        
        print(dArray);
        
        
        
        anArray.append(1100);
        print(anArray)
        
        //        anArray.insertContentsOf([1200, 1211, 1212, 1212, 12, 12], at: 0);
        print(anArray)
        
        if anArray == bArray
        {
            print("Two arrays are equal")
        }
        
        anArray.insert(1111, atIndex: 0);
        print(anArray);
        
        anArray.insertContentsOf([123, 231, 321], at: anArray.count)
        print(anArray); //[1111, 1, 2, 3, 4, 5, 1100, 123, 231, 321]
        anArray.replaceRange(anArray.startIndex ... anArray.startIndex, with: dArray);
        
        print(anArray);
        
        print(anArray[12]);
        
        eArray[0] = 1;
        print(eArray);
        

        print(anArray.reverse());
        anArray.removeLast(); // Removes last element
        anArray.removeFirst() // Remove first element
        anArray.removeFirst(3); // Removes first 3 elements
        anArray.removeRange(1...5);
        anArray.removeAll() // Removes all objects
        print(anArray);
        

        anArray += dArray;
        print(anArray);
        
        for item in anArray
        {
            print(item);
        }
        
        for (index, item) in anArray.enumerate()
        {
            print("\(item) is at index: \(index)");
        }
        
        
        
    }

}

