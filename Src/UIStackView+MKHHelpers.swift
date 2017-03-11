//
//  UIStackView+MKHHelpers.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 1/20/17.
//  Copyright © 2017 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

@available(iOS 9.0, *)
public
extension UIStackView
{
    @discardableResult
    func sv(_ views: UIView...)
    {
        for v in views
        {
            addArrangedSubview(v)
        }
    }
}
