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
        print(WEEKDAY.MONDAY);
        print(WEEKDAY.THURSDAY);
        isWeekDay(.MONDAY);
        
        if Month.January.rawValue == 1
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
        case MONDAY
        case TUESDAY
        case WEDNEDAY
        case THURSDAY
        case FRIDAY
    }
    
    enum WEEKENDS
    {
        case SUNDAY, SATURDAY // Multiple Cases separated by commas
    }
    
    enum Month: Int // Here, Int is a raw value type
    {
        case January = 1, February, March, April, May, June, July, August, September, October, November, December
    }
    
    func isWeekDay(aDay: WEEKDAY) -> String
    {
        print(WEEKDAY.MONDAY);
        print(WEEKDAY.TUESDAY);
        print(WEEKDAY.FRIDAY);
        
        // Initilizing with Raw value
        let december = Month(rawValue: 12)
        print(december) // 12
        
        switch aDay // Enums in Switch
        {
        case .MONDAY:
            return "Monday";
        case .TUESDAY:
            return "Tuesday";
        case .WEDNEDAY:
            return "Wednesday";
        case .THURSDAY:
            return "Thursday";
        case WEEKDAY.FRIDAY:
            return "Friday";
        default:
            return "Not a weekday";
        }
    }
}