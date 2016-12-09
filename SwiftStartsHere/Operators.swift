//
//  Operators.swift
//  SwiftStartsHere
//
//  Created by Reddy, Devendar on 9/19/16.
//
//

import Foundation

/*
 // OPERATORS
 Defination: Operator is a symbol which perform operations on Operands
 Ex: a + b
 Here, a, b are operands and + is Operator
 
 
 We have different kinds of operators as below
 
 Arithmetic Operators (+, -, *, /, %, ++, --)
 Comparison Operators (>, <, >=, <=, ==, !=)
 Logical Operators (&&, ||, !)
 Bitwise Operators (Not Required)
 Assignment Operators (=, +=, -=, *=, /=, %=)
 Conditional Operator ( ?: Ex: Condition? X : Y)
 
 NEW:
 i. Range Operators(Closed Range(...), Half Open Range(..<))
 ii. Nil coalescing operator (??)
 */

class Operators: NSObject
{
    func playWithOperators() -> Void
    {
        var a = 10
        let b = 20
        
        // Arithmetic Operators
        print("Addition is: \(a+b)") // 30
        print("Subtraction: \(a-b)") // -10
        print("Multiply: \(a*b)") // 200
        print("Division: \(b/a)") // 2
        print("Modulos: \(b%a))") // 0, Ex: i) 5 / 2 = 1, ii) 5 / 3 = 2
        
        print("Pre increment: \(++a)") //11
        print("Post Increment: \(a++)")//11, Value doesn't updated in current statement
        print("Current value: \(a)")//10
        
        print("Pre Decrement: \(--a)") // 11
        print("Post Decrement: \(a--)")//11
        print("Current value: \(a)")//10
        
        
        // Comparison Operators (>, <, >=, <=, ==, != )
        
        if a > b // false
        {
            print("a is greater than b")
        }
        
        if a < b // true
        {
            print("a is less than b")
        }
        
        if a >= b // false
        {
            print("a is greater than or equals to b")
        }
        
        if a <= b // true
        {
            print("a is less than or equals to b")
        }
        
        if a == b // false
        {
            print("a and b are equal")
        }
        
        if a != b // true
        {
            print("a and b are not equal")
        }
        
        // Logical Operators (&&, ||, !)
        
        if a >= 10 && a <= 100 // true
        {
            print("a value is with in 10 - 100 range");
        }
        
        if a == 10 || b == 10 // true
        {
            print("Either a or b equal to 10")
        }
        
        if !(a == 10) // false
        {
            print("a is not equals to 10")
        }
        
        // Assignment Operators (=, +=, -=, *=, /=, %=)
        
        let aTemp = a // aTemp is 10
        
        a += 20 // a = a + 20  // 30
        
        a -= 20 // a = a - 20  // 10
        
        a *= 20 // a = a * 20  // 200
        
        a /= 20 // a = a / 20  // 10
        
        a %= 20 // a = a % 20  // 10 % 20 = 10
        
        // Conditional Operator (Condition? X : Y)
        
        let result = a != 0 ? a : b
        
        print(result) // 10
        
        
        // i. Range operators are explained in Control Statements
        
        // ii. Nil Coalescing operator(??): Discussed during Optionals
    }
}

/*
// Tasks:
i. Write a program to find largest number between 3 numbers
ii. Write a Program to display below output
 
 5 * 1 = 5
 5 * 2 = 10
 5 * 3 = 15
 5 * 4 = 20
 5 * 5 = 25
 5 * 6 = 30
 5 * 7 = 35
 5 * 8 = 40
 5 * 9 = 45
 5 * 10 = 50

 iii. Write a program to display 100, 99, 98 ... 1 values
 
 iv. What are the two new operators available in swift?
*/