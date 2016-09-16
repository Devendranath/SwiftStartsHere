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
        let currentDate = NSDate()
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.timeZone = NSTimeZone.localTimeZone()
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
//        dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle
        print(dateFormatter.stringFromDate(currentDate));
        print(dateFormatter.dateFromString(dateFormatter.stringFromDate(currentDate)));
        self.showDateFormatOperations()
    }
    
    func showDateFormatOperations()
    {
        let currentDate = NSDate()
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MM/YYYY"
        print("Date in dd/MM/YYYY format:\(dateFormatter.stringFromDate(currentDate))") // 29/05/2016
        
        dateFormatter.dateFormat = "hh/mm/ss z";
        print("Date in hh/mm/ss z format:\(dateFormatter.stringFromDate(currentDate))") //01/28/14 IST
        
        dateFormatter.dateFormat = "EEEE"
        print("Date in EEEE format:\(dateFormatter.stringFromDate(currentDate))") //Ex: Sunday
        
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle;
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle;
        print("Date in ShortStyle format:\(dateFormatter.stringFromDate(currentDate))") //Ex: 29/05/16, 1:28 PM
        
        
        dateFormatter.dateStyle = NSDateFormatterStyle.LongStyle;
        dateFormatter.timeStyle = NSDateFormatterStyle.LongStyle;
        print("Date in LongStyle format:\(dateFormatter.stringFromDate(currentDate))") //Ex: 29 May 2016 at 1:28:14 PM IST
        
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle;
        dateFormatter.timeStyle = NSDateFormatterStyle.MediumStyle;
        print("Date in MediumStyle format:\(dateFormatter.stringFromDate(currentDate))") //Ex: 29-May-2016, 1:28:14 PM
        
        dateFormatter.dateStyle = NSDateFormatterStyle.FullStyle;
        dateFormatter.timeStyle = NSDateFormatterStyle.FullStyle;
        print("Date in FullStyle format:\(dateFormatter.stringFromDate(currentDate))") //Ex: Sunday, 29 May 2016 at 1:28:14 PM India Standard Time
        
        let stringDate = dateFormatter.stringFromDate(NSDate())
        print(stringDate)
        
        let dateFromString = dateFormatter.dateFromString(stringDate);
        print(dateFromString) //2016-05-29 07:59:51 +0000
        
        // Get the month name form number
        let monthNumber = 10; // Starts from 0-11
        
        let monthName = dateFormatter.monthSymbols[monthNumber];
        print(monthName) // November
        
        let timeInterval = NSDate().timeIntervalSinceNow; // The time interval between date object and Jan 1st 1970
        let timeGap = NSDate().timeIntervalSinceNow; //  Gap between date object and current time
        
        let aDate = NSDate().dateByAddingTimeInterval(24*60*60)
        
        if currentDate.compare(aDate) == NSComparisonResult.OrderedSame
        {
            print("Two dates are same")
        }
        else if currentDate.compare(aDate) == NSComparisonResult.OrderedAscending // true if RHS is bigger
        {
            print("aDate is greater than today (RHS is greater than LHS)")
        }
        else
        {
            print("aDate is greater than today (RHS is lesser than LHS)")
        }        
        
        let date = NSDate()
        let unitFlags: NSCalendarUnit = [.Hour, .Day, .Month, .Year, .Minute]
        let components = NSCalendar.currentCalendar().components(unitFlags, fromDate: date)
        print(components.day) //29
        print(components.month) // 5
        print(components.year) // 2016
        
    }
}