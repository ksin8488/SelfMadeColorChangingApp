//
//  SecondScreenController.swift
//  SelfMadeColorChangingApp
//
//  Created by Singh, Kashish on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//
 import UIKit

import Foundation

public class SecondScreenController : UIViewController
{
    private lazy var color: ColorTools = ColorTools() //formal way

    public override func viewDidLoad()
    {
        super.viewDidLoad() //automatically gets called as soon as you go to this screen
        view.backgroundColor = color.createRandomColor()
    }
}
