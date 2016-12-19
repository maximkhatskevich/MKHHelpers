//
//  UIImage+MKHHelpers.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 10/25/16.
//  Copyright © 2016 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

public
extension String
{
    public
    func image() -> UIImage?
    {
        return UIImage(named: self)
    }
}
