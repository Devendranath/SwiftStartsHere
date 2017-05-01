//
//  Dates.swift
//  SwiftStartsHere
//
//  Created by apple on 29/05/16.
//
//

import Foundation
class Dates: NSObject
{
    func playWithDates()
    {
        // Get the current time for local time zone
        let currentDate = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone.autoupdatingCurrent
        dateFormatter.timeStyle = DateFormatter.Style.short
//        dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
        print(dateFormatter.string(from: currentDate));
        print(dateFormatter.date(from: dateFormatter.string(from: currentDate)));
        self.showDateFormatOperations()
    }
    
    func showDateFormatOperations()
    {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/YYYY"
        print("Date in dd/MM/YYYY format:\(dateFormatter.string(from: currentDate))") // 29/05/2016
        
        dateFormatter.dateFormat = "hh/mm/ss z";
        print("Date in hh/mm/ss z format:\(dateFormatter.string(from: currentDate))") //01/28/14 IST
        
        dateFormatter.dateFormat = "EEEE"
        print("Date in EEEE format:\(dateFormatter.string(from: currentDate))") //Ex: Sunday
        
        dateFormatter.dateStyle = DateFormatter.Style.short;
        dateFormatter.timeStyle = DateFormatter.Style.short;
        print("Date in ShortStyle format:\(dateFormatter.string(from: currentDate))") //Ex: 29/05/16, 1:28 PM
        
        
        dateFormatter.dateStyle = DateFormatter.Style.long;
        dateFormatter.timeStyle = DateFormatter.Style.long;
        print("Date in LongStyle format:\(dateFormatter.string(from: currentDate))") //Ex: 29 May 2016 at 1:28:14 PM IST
        
        dateFormatter.dateStyle = DateFormatter.Style.medium;
        dateFormatter.timeStyle = DateFormatter.Style.medium;
        print("Date in MediumStyle format:\(dateFormatter.string(from: currentDate))") //Ex: 29-May-2016, 1:28:14 PM
        
        dateFormatter.dateStyle = DateFormatter.Style.full;
        dateFormatter.timeStyle = DateFormatter.Style.full;
        print("Date in FullStyle format:\(dateFormatter.string(from: currentDate))") //Ex: Sunday, 29 May 2016 at 1:28:14 PM India Standard Time
        
        let stringDate = dateFormatter.string(from: Date())
        print(stringDate)
        
        let dateFromString = dateFormatter.date(from: stringDate);
        print(dateFromString) //2016-05-29 07:59:51 +0000
        
        // Get the month name form number
        let monthNumber = 10; // Starts from 0-11
        
        let monthName = dateFormatter.monthSymbols[monthNumber];
        print(monthName) // November
        
        let timeInterval = Date().timeIntervalSinceNow; // The time interval between date object and Jan 1st 1970
        let timeGap = Date().timeIntervalSinceNow; //  Gap between date object and current time
        
        let aDate = Date().addingTimeInterval(24*60*60)
        
        if currentDate.compare(aDate) == ComparisonResult.orderedSame
        {
            print("Two dates are same")
        }
        else if currentDate.compare(aDate) == ComparisonResult.orderedAscending // true if RHS is bigger
        {
            print("aDate is greater than today (RHS is greater than LHS)")
        }
        else
        {
            print("aDate is greater than today (RHS is lesser than LHS)")
        }        
        
        let date = Date()
        let unitFlags: NSCalendar.Unit = [.hour, .day, .month, .year, .minute]
        let components = (Calendar.current as NSCalendar).components(unitFlags, from: date)
        print(components.day) //29
        print(components.month) // 5
        print(components.year) // 2016
        
    }
}
