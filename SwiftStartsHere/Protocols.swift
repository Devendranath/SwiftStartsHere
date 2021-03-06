//
//  Protocols.swift
//  SwiftStartsHere
//
//  Created by apple on 21/05/16.
//
//


@objc protocol Player
{
    func run() // Required
    func walk() // Required
    
    @objc optional func playCricket() // Optional
    @objc optional func playFootball() // Optional
    @objc optional func playBaseball() // Optional
}


class CricketPlayer: Player
{
    @objc func run()
    {
        print("I can run")
    }
    
    @objc func walk() {
        print("I can walk")
    }
    
    @objc func playCricket()
    {
        print("I play cricket")
    }
    
    @objc func playFootball()
    {
        print("I try playing Football")
    }
}
