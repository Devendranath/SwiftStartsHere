//
//  MyObjcClass.m
//  SwiftStartsHere
//
//  Created by apple on 19/05/16.
//
//

#import "MyObjcClass.h"
#import "SwiftStartsHere-Swift.h"

@implementation MyObjcClass

// Calling this method from swift's class
-(void)aObjcMethod
{
    NSLog(@"Calling an Objc method from swift");
    [self executeSwiftMethod];
}

// Calling Swift's method (playWithDictionaries) from Objc
-(void)executeSwiftMethod
{
    Dictionaries *newDict = [[Dictionaries alloc] init];
    [newDict playWithDictionaries];
    
    AccessSpecifiers *accessObj = [[AccessSpecifiers alloc] init];
    
    NSLog(@"%li",(long)accessObj.aPublicVar);
    NSLog(@"%li",(long)accessObj.aInternalVar);    
}

@end
