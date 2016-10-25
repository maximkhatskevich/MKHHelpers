//
//  UIViewController+MKHHelpers.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 10/25/16.
//  Copyright © 2016 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

public
extension UIViewController
{
    public
    var topMostViewCtrl: UIViewController
    {
        var result = self
        
        //===
        
        while
            let presentedViewCtrl = result.presentedViewController
        {
            result = presentedViewCtrl
        }
        
        //===
        
        return result
    }
}
