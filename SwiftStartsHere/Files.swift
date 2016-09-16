//
//  Files.swift
//  SwiftStartsHere
//
//  Created by apple on 01/06/16.
//
//

import Foundation
class Files
{
    func playWithFunctions()
    {
        // Creating a file manager instance 
        
        let fileManager = NSFileManager.defaultManager()
        
        let filePath = "/Applications"
        // Check file existence at given path
        
        if fileManager.fileExistsAtPath(filePath)
        {
            print("File exists")
        }
        else
        {
            print("File not found")
        }
        
        
        // Comparing contents of two files
        if fileManager.contentsEqualAtPath(filePath, andPath: filePath)
        {
            print("File contents match")
        }
        else
        {
            print("File contents do not match")
        }
        
        // Check  wheather the file is writable or not
        if fileManager.isWritableFileAtPath(filePath)
        {
            print("File is writable")
        }
        else
        {
            print("File is read-only")
        }
        
        // Moving contents of one path to another
        do
        {
             try fileManager.moveItemAtPath(filePath, toPath: filePath)
        }
        catch let error as NSError
        {
            print("File not moved: \(error)")
        }
        
        // Copying the contents from one path to another path
//        do{
//            try fileManager.copyItemAtPath(sourcePath, toPath: destinationPath)
//        }
//        catch let error as NSError
//        {
//            print("Failed to copy item at path \(sourcePath) to \(destinationPath)")
//        }
        
        // Removing items at path
        do{
            try fileManager.removeItemAtPath(filePath)
        }
        catch let error as NSError
        {
            print("Failed to remove item at path \(filePath)")
        }
        
        let dirPaths = NSSearchPathForDirectoriesInDomains(
            .DocumentDirectory, .UserDomainMask, true)
        
        var docsPath: String = dirPaths[0];
        
        docsPath+="/MyFolder";
        print(docsPath);
        
        do{
           try fileManager.createDirectoryAtPath(docsPath, withIntermediateDirectories: false, attributes: nil)
        }
        catch
        {
            print("Error occurred");
        }
        
        // Path of the application Bundle
        print(NSBundle.mainBundle().resourcePath);
        
        // Path of the specific resource which is there in bundle
        print(NSBundle.mainBundle().pathForResource("Filename", ofType: "Extension"));
        
    }
    
}