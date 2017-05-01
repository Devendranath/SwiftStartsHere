//
//  WebServices.swift
//  SwiftStartsHere
//
//  Created by apple on 29/05/16.
//
//

import Foundation

class WebServices
{
    func playWithWebServices()
    {
        self.fetchWeatherDataInSynchronous()
        self.fetchWeatherDataInAsynchronous()
        let aString = "aString";
    }
    
    func fetchWeatherDataInSynchronous()
    {
        let urlString = "https://brooke.smartrx.in/apiresult.php"
        let url = URL(string: urlString)
        let mRequest: NSMutableURLRequest = NSMutableURLRequest(url: url!)
        let session = URLSession.shared
        let dataTask = session.dataTask(with: mRequest, completionHandler: { (responseData, response, error) -> Void in
            
            print("Response received");
            if error != nil
            {
                print(responseData);
            }
        }) 
        dataTask.resume();
    }
    
    func fetchWeatherDataInAsynchronous()
    {
//        let urlString = "https://brooke.smartrx.in/apiresult.php"
//        let url = NSURL(string: urlString)
//        let mRequest: NSMutableURLRequest = NSMutableURLRequest(URL: url!)
//        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
//        let session = NSURLSession(configuration: configuration, delegate: self, delegateQueue: nil)
//        let dataTask = session.dataTaskWithRequest(mRequest)
//        dataTask.resume();
    }
}
