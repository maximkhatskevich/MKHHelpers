//
//  MiscUI.swift
//  MKHHelpers
//
//  Created by Maxim Khatskevich on 10/25/16.
//  Copyright © 2016 Maxim Khatskevich. All rights reserved.
//

import UIKit

//===

public
let onePixel = 1.0 / UIScreen.main.scale

//===

public
func isPhone() -> Bool
{
    return UIDevice.current.userInterfaceIdiom == .phone
}

public
func isPad() -> Bool
{
    return UIDevice.current.userInterfaceIdiom == .pad
}
