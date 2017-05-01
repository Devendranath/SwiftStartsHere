//
//  Enums.swift
//  SwiftStartsHere
//
//  Created by apple on 21/05/16.
//
//

import Foundation

class Enums
{
    func playWithEnums()
    {
        print(WEEKDAY.monday);
        print(WEEKDAY.thursday);
        isWeekDay(.monday);
        
        if Month.january.rawValue == 1
        {
            print("")
        }
    }
    
    // SYNTAX
    /*
     enum NewDatatype
     {
     case valueOne
     case valueTwo
     .........
     .........
     .........
     case valueN
     }
     */
    
    enum WEEKDAY
    {
        case monday
        case tuesday
        case wedneday
        case thursday
        case friday
    }
    
    enum WEEKENDS
    {
        case sunday, saturday // Multiple Cases separated by commas
    }
    
    enum Month: Int // Here, Int is a raw value type
    {
        case january = 1, february, march, april, may, june, july, august, september, october, november, december
    }
    
    func isWeekDay(_ aDay: WEEKDAY) -> String
    {
        print(WEEKDAY.monday);
        print(WEEKDAY.tuesday);
        print(WEEKDAY.friday);
        
        // Initilizing with Raw value
        let december = Month(rawValue: 12)
        print(december) // 12
        
        switch aDay // Enums in Switch
        {
        case .monday:
            return "Monday";
        case .tuesday:
            return "Tuesday";
        case .wedneday:
            return "Wednesday";
        case .thursday:
            return "Thursday";
        case WEEKDAY.friday:
            return "Friday";
        default:
            return "Not a weekday";
        }
    }
}
