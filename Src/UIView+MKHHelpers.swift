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
    @discardableResult
    func add(on superview: UIView, _ translatesAutoresizing: Bool = false) -> Self
    {
        superview.addSubview(self)
        
        //===
        
        translatesAutoresizingMaskIntoConstraints = translatesAutoresizing
        
        //===
        
        return self
    }
}

//===

public
extension UIView
{
    @available(iOS 9.0, *)
    @discardableResult
    func add(on stackView: UIStackView) -> Self
    {
        stackView.addArrangedSubview(self)
        
        //===
        
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    func remove(from stackView: UIStackView) -> Self
    {
        stackView.removeArrangedSubview(self)
        
        //===
        
        return self
    }
}

//===

public
extension UIView
{
    func removeAllConstraints()
    {
        removeConstraints(constraints)
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
