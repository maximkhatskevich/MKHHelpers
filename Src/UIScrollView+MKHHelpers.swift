//
//  UIScrollView+MKHHelpers.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 10/25/16.
//  Copyright © 2016 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

public
extension UIScrollView
{
    public
    func syncContentSizeWithBounds()
    {
        contentSize = bounds.size
    }
    
    public
    func resetIndicatorInsets()
    {
        scrollIndicatorInsets = UIEdgeInsets.zero
    }
}
