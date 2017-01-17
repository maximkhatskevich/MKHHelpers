//
//  Array+MKHHelpers.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 1/17/17.
//  Copyright © 2017 Maxim Khatskevich. All rights reserved.
//

import Foundation

//===

public
extension Array
{
    mutating
    func removeFirst() -> Element?
    {
        return (count > 0 ? remove(at: 0) : nil)
    }
}
