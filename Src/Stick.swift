//
//  Stick.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 1/20/17.
//  Copyright © 2017 Maxim Khatskevich. All rights reserved.
//

import Foundation

//===

public
enum Stick
{
    @discardableResult
    public
    static
    func with<T: AnyObject>(
        _ object: T,
        configure: (_: T) -> Void
        ) -> T
    {
        configure(object)
        
        //===
        
        return object
    }
}

//===

infix operator <|

@discardableResult
public
func <| <T: AnyObject>(object: T, configure: (_: T) -> Void) -> T
{
    configure(object)
    
    //===
    
    return object
}
