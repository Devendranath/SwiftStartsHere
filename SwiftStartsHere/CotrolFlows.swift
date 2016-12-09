//
//  CotrolFlows.swift
//  SwiftStartsHere
//
//  Created by apple on 20/05/16.
//
//

/*

    //CONTROL FLOW STATEMENTS: Control flow statements are used to control execution flow of the program
    Swift provides following list of control statements
    i. if
    ii. if-else
    iii. for
    iv. for-in
    v. while
    vi. repeat-while    
    vii. switch
*/

class CotrolFlows: NSObject
{
    func playWithControlFlow()
    {
        // For Loops
        // ORDINARY FOR LOOP. It is depricated in Swift 3.x
        for var i = 0; i < 5; i++ // True till the value is 4
        {
            print("Hello: %i",i);
        }
        /*
            Hello: 0 Hello: 1 Hello: 2  Hello: 3  Hello: 4
        */
        
        // CLOSED RANGE FOR-IN LOOP: Includes 1st and last element also
        for _ in 1...5
        {
            print("Hello");
        }
        /*
            Hello Hello Hello  Hello  Hello
        */
        
        // HALF OPEN RANGE FOR LOOP: Doesn't include last element
        for i in 1..<5 // 1-4
        {
            print(i);
        }
        /* 1  2  3  4  */
        
        // FAST ENUMERATION: Process of iterating collections in a quick way. It is faster than regular for-loop
        let anArray = [1, 2,3,4,5];
        
        for item in anArray
        {
            print(item);
        }
        // 1  2  3  4  5
        
        let aDictionary: [String : String] = ["Key1": "Value1", "Key2" : "Value2"];
        
        for item in aDictionary
        {
            print(item)
        }
        
        /*
            ("Key1", "Value1")
            ("Key2", "Value2")
        */
        
        // Through Tuples
        for (index , value) in aDictionary
        {
            print(index)
            print(value)
        }
        /*
            Key1
            Value1
            Key2
            Value2
        */
        
        
        var i = 0;
        while i<5
        {
            print(i++);
        }
        //0, 1, 2, 3, 4

        var j = 0
        repeat{
            print(j)
            j++;
        }while j<5;
        
        // 0,1,2,3,4
        let a = 10;
        let b = 15;
        
        if a < b
        {
            print("a is less than b")
        }
        else
        {
          print("a is not less than b")
        }
        
        
        var age = 18
        switch age {
        case 1...17:
            print("You are not allowed to Vote");
        case 21...120:
            print("You are eligible having Liquor")
        case 18:
            print("You are eligible for vote")
        default:
            print("Your's is unknown case");
        }
        
        //You are eligible for vote
        
        // Using fallthrough
        // fallthrough statement execute the next case irrespective of the case matching
        age = 22
        switch age {
        case 1...17:
            print("You are not allowed to Vote");
        case 21...120:
            print("You are eligible having Liquor")
            fallthrough
        case 18:
            print("You are eligible for vote")
        default:
            print("Your's is unknown case");
        }
        
        //You are eligible having Liquor
        //You are eligible for vote
        
        // Switch
        i = 100
        switch i
        {
        case 1...25:
            print("Value \(i) is between 1 to 25");
        case 26..<50:
            print("Value \(i) is between 26 to 49");
        case 50...75:
            print("Value \(i) is between 50 to 75");
        case 100, 200: // Multiple values separated by coma
            print("Value is here");
        default:
            print("Default case is must in Swift's switch statement");
        }
        
        // Value is here
        
        // Default case is must in Swift's switch statement"
        
        let char:Character = "C";
        switch char
        {
        case "A"..."Z":
            print("Value is between A and Z");
        case "a"..."z":
            print("Value is between a and z");
        case "*":
            print("The value is : *");
        case "$":
            print("The value is : $");
        default:
            print("Input doesn't match any case");
        }
        // Value is between A and Z
    }
}

 /*
 Tasks:
 i. Display all even numbers between 1-50?
 ii. Display all even numbers between 50 - 100?
 iii. Display all values which are divisible by 5 between 100-200?
 iv. Find largest element from the three elements a,b,c?
 v. Check the given value is prime or not?
 vi. check the give value is even or odd?
 */

