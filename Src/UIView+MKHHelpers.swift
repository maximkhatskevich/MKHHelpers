//
//  UIView+MKHHelpers.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 10/25/16.
//  Copyright © 2016 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

public
extension UIView
{
    var isVisible: Bool
    {
        get
        {
            return !isHidden
        }
        
        set(newValue)
        {
            isHidden = !newValue
        }
    }
}

//===

public
extension UIView
{
    func allSubviews() -> [UIView]
    {
        var result: [UIView] = []
        
        //===
        
        collectAllSubviews(into: &result)
        
        //===
        
        return result
    }
    
    //===
    
    private
    func collectAllSubviews(into list: inout [UIView])
    {
        for sv in subviews
        {
            list.append(sv)
            
            //===
            
            sv.collectAllSubviews(into: &list)
        }
    }
}
