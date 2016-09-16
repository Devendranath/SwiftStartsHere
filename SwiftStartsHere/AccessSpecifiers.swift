//
//  AccessControl.swift
//  SwiftStartsHere
//
//  Created by apple on 26/05/16.
//
//


/*   
    Access Specifiers (Access Controls): Access Specifiers defines the properties and methods availablity scope in different parts of the Program.

    Swift provides 3 kinds of Access Specifiers,
    i. public
    ii. private
    iii. internal
    
    Public:(Higher level access) This means everyone can read and write the property.

    Internal:(Medium Level Access) This means only accessible in same module in which it is defined. Doesn’t work in other frameworks.

    Private:(Low Lever Access) This means that only accessible in same file where it is declared. Outside of the file is not accessible

    Default access specifier in Swift is internal
    
    Access Specifiers can be used for Structures, Enums, Classes and properties, methods.
*/

class AccessSpecifiers: NSObject
{
    public var aPublicVar = 10;
    private var aPrivateVar = 20;
    internal var aInternalVar = 30
    
    public func aPublicMethod()
    {
        print("This is a Public Method")
    }
    
    private func aPrivateMethod()
    {
        print("This is a Private Method")
    }
    
    internal func aInternalMethod()
    {
        print("This is a Internal Method")
    }
}

class MySubClass: AccessSpecifiers
{
    // All 3 kinds of variables and methds are accessable in another class in same file
    func tryAccessingVariables()
    {
        print(aPublicVar)
        print(aPrivateVar)
        print(aInternalVar);
    }
    
    func tryAccessingMethods()
    {
        aPublicMethod()
        aPrivateMethod()
        aInternalMethod()
    }
}

class MyClass: NSObject
{
    let accessObj = AccessSpecifiers()
    // All 3 kinds of variables and methds are accessable in another class in same file
    func tryAccessingVariables()
    {
        print(accessObj.aPublicVar)
        print(accessObj.aPrivateVar)
        print(accessObj.aInternalVar);
    }
    
    func tryAccessingMethods()
    {
        accessObj.aPublicMethod()
        accessObj.aPrivateMethod()
        accessObj.aInternalMethod()
    }
}

// NOTE: Declare following code in another file and check what happens:

/*

class MyClassInAnotherFile: NSObject
{
    let accessObj = AccessSpecifiers()
    // Only public and internal kind of variables and methods are accessable in another class in different file
    func tryAccessingVariables()
    {
        print(accessObj.aPublicVar)
        print(accessObj.aPrivateVar) // Error, private variables are not access able another class which is declared in different file
        print(accessObj.aInternalVar);
        
        func tryAccessingMethods()
        {
            accessObj.aPublicMethod()
            accessObj.aPrivateMethod() // Error: Private methods can be accessed
            accessObj.aInternalMethod()
        }
    }
}

*/

