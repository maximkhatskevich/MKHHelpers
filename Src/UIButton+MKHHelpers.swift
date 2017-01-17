//
//  UIButton+MKHHelpers.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 1/17/17.
//  Copyright © 2017 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

public
extension UIButton
{
    func image(_ i: UIImage?, for state: UIControlState = .normal) -> Self
    {
        setImage(i, for: state)

        //===
        
        return self
    }
}
