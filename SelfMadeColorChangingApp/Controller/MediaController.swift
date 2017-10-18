//
//  MediaController.swift
//  SelfMadeColorChangingApp
//
//  Created by Singh, Kashish on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
import UIKit

public class MediaController : UIViewController
{
    private lazy var color: ColorTools = ColorTools() //formal way
    private var imageCounter : Int = 0
    
    public override func viewDidLoad()
    {
        super.viewDidLoad() //automatically gets called as soon as you go to this screen
        view.backgroundColor = color.createRandomColor()
    }
    

    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var soundSlider: UISlider!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var imageFrame: UIImageView!
    
    @IBAction func soundButtonMethod(_ sender: UIButton)
    {
    
    }
    
    @IBAction func soundSliderMethod(_ sender: UISlider)
    {
        
    }
    
    @IBAction func imageButtonMethod(_ sender: UIButton)
    {
        changeImage()
        view.backgroundColor = color.createRandomColor()
    }
    
    private func changeImage() -> Void
    {
        if (imageCounter > 2)
        {
            imageCounter = 0
        }
        
        if (imageCounter == 0)
        {
            imageFrame.image = UIImage(named: "DoingItWrong")
        }
        else if (imageCounter == 1)
        {
            imageFrame.image = UIImage(named: "DontUnderstandPoster")
        }
        else
        {
            imageFrame.image = UIImage(named: "HowDoesItWork")
        }
        
        imageCounter += 1
    }
    
}
