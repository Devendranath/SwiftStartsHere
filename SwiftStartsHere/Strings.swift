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
     
     Operations:
     Creating Strings
     Finding number of characters in a String
     Finding the Character at given position
     Comparing Two Strings
     Empty Check
     Concatinating Two strings
     Appending Character
     Inserting a Character at given position
     Inserting a String at given position
     Remove character at given position
     Replacing a Character / String with other string
     String to other types conversion
     Converting upper case, lowercase and Capitalized Strings
     Suffix / Prefix Check
     
     
     String Interpolation: The process of formatting a string called String Interpolation. (Embedding other datatypes in Strings)
     Ex: "I am studying 10th class"
     "I am Devendranath"
     */
    
        func playWithStrings() -> Void
        {
            // Creating
            var aString = "This is a String";
            aString.characters
            //Finding number of characters in a String
            let numberOfChracters = aString.characters.count;
            print("Number of characters : \(numberOfChracters)");
            
            //Find a Character at given index
            print("Character at given index: \(aString[aString.characters.index(aString.startIndex, offsetBy: 5)])");
            
            print("Last character in a String: \(aString[aString.characters.index(before: aString.endIndex)])")
            
            print(aString[aString.characters.index(after: aString.startIndex)]); // 2nd Character in a String
            var aStr: String = "I am learning ";
            
            aStr = aStr + "Swift" // I am learning Swift
            
            if aStr.isEmpty
            {
                print("This is an empty string");
            }
            else
            {
                print("This \"\(aStr)\" is not emply");
            }
            
            var bStr = "This is another string";
            
            if aStr == bStr
            {
                print("String comparision success!");
            }
            else
            {
                print("Strings are not equal")
            }
            // Strins are not equal
            
            if aString.hasSuffix("string")
            {
                print("It has sufix");
            }
            // It has a suffix
            
            if aString.hasPrefix("This")
            {
                print("It has prefix");
            }
            
            // Lowecase string
            
            print("This is lowerase string: \(aStr.lowercaseString)")
            
            print("This is uppercase string: \(aStr.uppercased())")
            
            print("This is capitilized string: \(aStr.capitalized)")
            
            print("C string is : \(aStr.utf8)");
            
            //        print("SubStirng is : \(aStr.substringToIndex())");
            
            // Enumurating over string
            for char in aStr.characters
            {
                print(char);
            }
            
            print("Words in a string: \(aStr.components(separatedBy: " "))");
            
            let aCharacter: Character = "C";
            
            aStr.append(aCharacter);
            
            print(aStr.unicodeScalars);
            
            let greeting = "Guten Tag!"
            
            print(greeting[greeting.startIndex])
            
            // G
            
            print(greeting[greeting.characters.index(before: greeting.endIndex)])
            
            // !
            
            print(greeting[greeting.characters.index(after: greeting.startIndex)])
            
            // u
            
            let index = <#T##Collection corresponding to your index##Collection#>.index(after: greeting.characters.index(greeting.startIndex, offsetBy: 7))
            
            print(greeting[index])
            
            // a
            
            print(greeting.endIndex);

            var cString = "Hello";
            
            aString.insert("-", at: aString.startIndex);
            print(aString);
            
            aString.remove(at: aString.startIndex);
            print(aString);
            
            aString.insert(contentsOf: "-- ABCDEF ---".characters , at: aString.endIndex);
            
            print(aString);
            
            aString.remove(at: aString.startIndex);
            
            aString.removeSubrange(aString.startIndex ... aString.characters.index(before: aString.endIndex))
            
            
            print(aString);
            aString.removeAll()
            print(aString);
            
            cString.insert("!", at: cString.endIndex)
            
            print(cString);
            
            cString.hasSuffix("Hello");
            
            cString.hasPrefix("Prefix")
            
            // String Interpolation
            let name = "Devendra"
            let country = "India"
            let age = 26
            
            let aboutMe = "I am \(name), I am from \(country). I am \(age) years old";
            print(aboutMe) // I am Devendra, I am from India. I am 25 years old.
            
            let str = "I-Love-Gardening"
            print(str[str.startIndex]) // I
            print(str[str.characters.index(after: str.startIndex)]) // -
            print(str[str.characters.index(before: str.endIndex)]) // g
            print(str[str.characters.index(str.startIndex, offsetBy: 3)])// o
            print(str[str.characters.index(str.endIndex, offsetBy: -2)]) //n
            
            let range = (str.startIndex ..< str.characters.index(str.startIndex, offsetBy: 5))
            
            print(str.substring(with: range)) // I-Love
            print(str.substring(to: str.characters.index(before: str.endIndex)))// I-Love-Gardening
            print(str.substring(from: str.characters.index(str.startIndex, offsetBy: 10))) //I-Love-Gard
            
            // remove in range
//            aString.removeRange(aString.startIndex ... aString.startIndex.advancedBy(3))
            
            // Appending String
            
            let bString = "One Two Three Four Five"
            
            aString = aString + " I already know Obj-C"
            aString.insert(contentsOf: bString.characters, at: aString.startIndex)
            aString.replacingOccurrences(of: "Swift", with: "Objective-C")
            
            
            
            let words = bString.components(separatedBy: " ")
            
            
        }
}
