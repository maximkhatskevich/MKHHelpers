//
//  UIImageView+MKHHelpers.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 10/25/16.
//  Copyright © 2016 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

public
extension UIImageView
{
    public
    func onTap<T: Any>(target: T, handler: Selector) -> UIImageView
    {
        self.addGestureRecognizer(
            UITapGestureRecognizer(target: target, action: handler))
        
        //===
        
        return self
    }
}
