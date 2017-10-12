//
//  ColorTools.swift
//  SelfMadeColorChangingApp
//
//  Created by Singh, Kashish on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
import UIKit

public class ColorTools
{
    public func createRandomColor() -> UIColor
    {
        let newColor :UIColor
        let redValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue :CGFloat = CGFloat (Double (arc4random() % 256) / 255.00)
        let blueValue :CGFloat = CGFloat (drand48())
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1))
        
        return newColor
    }
}
