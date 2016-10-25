//
//  UIButton+MKHHelpers.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 10/25/16.
//  Copyright © 2016 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

public
extension UIButton
{
    public
    func onTap<T: Any>(target: T, handler: Selector) -> UIButton
    {
        self.addTarget(
                target,
                action: handler,
                for: .touchUpInside)
        
        //===
        
        return self
    }
}
