//
//  Properties.swift
//  SwiftStartsHere
//
//  Created by apple on 21/05/16.
//
//




struct MyStructure {
    lazy var aLazyVariable = 10; // lazy can not be applied for let's
}

struct Person {
    var clothes: String {
        willSet {
            updateUI("I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI("I just changed from \(oldValue) to \(clothes)")
        }
    }
    
    var pants: Int = 0;
//        {
//        willSet{
//            
//        }
//        
//        didSet{
//            
//        }
//    }
    
    func updateUI(msg: String)
    {
        print(msg)
    }
}

class Properties: NSObject
{
    
    static var favoriteSong = "Shake it Off"
    
    var name: String = ""
    var age: Int = 0
    
    func aMethod()
    {
        let fan = Properties()
        print(fan);
        print(Properties.favoriteSong)
        
        //        print(fan.favoriteSong); //Error static member can not be used on instance type
    }
    
    class func bMethod()
    {
        print(bMethod)
//        print(age); // Error
    }
    
    static func aStaticMethod()
    {
        print(aStaticMethod)
//        print(age); // Error instance var in class method
    }
    
    
    func playWithProperties()
    {
        var myStrict = MyStructure()
        print(myStrict);
        print(myStrict.aLazyVariable)
        
        var taylor = Person(clothes: "T-shirts", pants: 89)
        
        taylor.clothes = "short skirts"
        
        let fan = Properties()
        print(Properties.favoriteSong)
        Properties.favoriteSong = "Bla Bla"
        aMethod();
        
    }
}
//
//struct Person {
//    var clothes: String {
//        willSet {
//            updateUI("I'm changing from \(clothes) to \(newValue)")
//        }
//        
//        didSet {
//            updateUI("I just changed from \(oldValue) to \(clothes)")
//        }
//    }
//}


class Person1
{
    var aStoredProperty: Int = 20;
    var clothsWeight: Float = 0.0
    var totalWeight: Float = 0.0
    var weight: Float
        {
            get
            {
                return totalWeight - clothsWeight;
            }
//        set
//        {
//            print(newValue);
//            
//        }
        }
}
