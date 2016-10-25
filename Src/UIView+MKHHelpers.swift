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
    
    public
    func allSubviews() -> [UIView]
    {
        var result: [UIView] = []
        
        //===
        
        collectAllSubviews(into: &result)
        
        //===
        
        return result
    }
}
