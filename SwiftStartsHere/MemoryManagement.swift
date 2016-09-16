//
//  MemoryManagement.swift
//  SwiftStartsHere
//
//  Created by apple on 31/05/16.
//
//

import Foundation

class MemoryManagement
{
    func playWithreferences()
    {
        var aHuman: Human? = Human(aName: "DevReddy")
        var aHeart: Heart? = Heart(pulse: 72)
        
        aHuman?.aHeart = aHeart;
        aHeart?.aOwner = aHuman;
        aHuman = nil;
    }
}

class Human
{
    
    
    var name: String
    var aHeart: Heart!
    
    init(aName: String) {
        print("Creating a Human Object")
        self.name = aName;
    }
    deinit {
        print("Human object released");
    }
}

class Heart
{
    var pulse: Int!
    var aOwner: Human!
    
    init(pulse: Int)  {
        print("Pulse object is created");
        self.pulse = pulse;
    }
    deinit  {
        print("Releasing pulse object")
    }
}

class Status
{
    init()
    {
        print("Staus object created")
    }
    
    deinit
    {
        print("Status object released");
    }
}
