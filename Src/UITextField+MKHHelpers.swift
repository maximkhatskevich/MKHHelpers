//
//  UITextField+MKHHelpers.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 10/25/16.
//  Copyright © 2016 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

public
extension UITextField
{
    public
    func onEdit<T: Any>(target: T, handler: Selector) -> UITextField
    {
        self
            .addTarget(
                target,
                action: handler,
                for: .editingChanged)
        
        //===
        
        return self
    }
    
    public
    func onExit<T: Any>(target: T, handler: Selector) -> UITextField
    {
        self
            .addTarget(
                target,
                action: handler,
                for: .editingDidEndOnExit)
        
        //===
        
        return self
    }
}
