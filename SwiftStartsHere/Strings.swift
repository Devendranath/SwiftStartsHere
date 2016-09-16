//
//  Strings.swift
//  SwiftStartsHere
//
//  Created by apple on 18/05/16.
//
//

import Foundation

class Strings
{
    /*
     Def: String is a group of Characters. It is represented in double quotes
     Ex: "Swift", "Objective-C"
     
     String Interpolation: The process of formatting a string called String Interpolation. (Embedding other datatypes in Strings)
     Ex: "I am studying 10th class"
     "I am Devendranath"
     */
    
        func playWithStrings() -> Void
        {
            var aString = "This is a String";
            
            let numberOfChracters = aString.characters.count;
            
            print("Number of characters : \(numberOfChracters)");
            
            // Character at given index
            
            print("Character at given index: \(aString[aString.startIndex.advancedBy(5)])");
            
            print(aString.startIndex);
            
            aString[aString.endIndex.predecessor()]; //
            
            print(aString[aString.startIndex.successor()]);
            var aStr: String = "I am learning ";
            
            aStr = aStr + "Swift"
            
            
            if aStr.isEmpty
            {
                print("This is an empty string");
            }
            else
            {
                print("This stirng is \(aStr.characters.count)");
            }
            
            var bStr = "This is another string";
            
            if aStr == bStr {
                print("String comparision success!");
            }
            else
            {
                print("Strings are not equal")
            }
            
            if aString.hasSuffix("String")
            {
                print("It has sufix");
            }
            
            if aString.hasPrefix("This")
            {
                print("It has prefix");
            }
            
            // Lowecase string
            
            print("This is lowerase string: \(aStr.lowercaseString)")
            
            print("This is uppercase string: \(aStr.uppercaseString)")
            
            print("This is capitilized string: \(aStr.capitalizedString)")
            
            print("C string is : \(aStr.utf8)");
            
            //        print("SubStirng is : \(aStr.substringToIndex())");
            
            // Enumurating over string
            
            for char in aStr.characters
            {
                print(char);
            }
            
            print("Words in a string: \(aStr.componentsSeparatedByString(" "))");
            
            let aCharacter: Character = "C";
            
            aStr.append(aCharacter);
            
            print(aStr.unicodeScalars);
            
            let greeting = "Guten Tag!"
            
            print(greeting[greeting.startIndex])
            
            // G
            
            print(greeting[greeting.endIndex.predecessor()])
            
            // !
            
            print(greeting[greeting.startIndex.successor()])
            
            // u
            
            let index = greeting.startIndex.advancedBy(7).successor()
            
            print(greeting[index])
            
            // a
            
            print(greeting.endIndex);

            var cString = "Hello";
            
            
            aString.insert("-", atIndex: aString.startIndex);
            print(aString);
            
            aString.removeAtIndex(aString.startIndex);
            print(aString);
            
            aString.insertContentsOf("-- ABCDEF ---".characters , at: aString.endIndex);
            
            print(aString);
            
            aString.removeAtIndex(aString.startIndex);
            
            aString.removeRange(aString.startIndex ... aString.endIndex.predecessor())
            
            
            print(aString);
            aString.removeAll()
            print(aString);
            
            cString.insert("!", atIndex: cString.endIndex)
            
            
            print(cString);
            
            cString.hasSuffix("Hello");
            
            cString.hasPrefix("Prefix")
            
            // String Interpolation
            let name = "Devendra"
            let country = "India"
            let age = 26
            
            let aboutMe = "I am \(name), I am from \(country). I am \(age) years old";
            print(aboutMe) // I am Devendra, I am from India. I am 25 years old.
            
        }
}