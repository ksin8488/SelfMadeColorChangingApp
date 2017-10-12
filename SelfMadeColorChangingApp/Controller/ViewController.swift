//
//  ViewController.swift
//  SelfMadeColorChangingApp
//
//  Created by Singh, Kashish on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorButton: UIButton!
    
    @IBAction func colorButtonMethod(_ sender: UIButton)
    {
        colorButton.backgroundColor = createRandomColor()  //changees the background of the button to random colors
        view.backgroundColor = createRandomColor()
        colorButton.setTitleColor(createRandomColor(), for: .normal)
    }
    
    private func createRandomColor() -> UIColor
    {
        let newColor :UIColor
        let redValue :CGFloat = CGFloat (Double (arc4random_uniform(256)) / 255.00)
        let greenValue :CGFloat = CGFloat (Double (arc4random() % 256) / 255.00)
        let blueValue :CGFloat = CGFloat (drand48())
        newColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: CGFloat(1))
        
        return newColor
    }
//Connected the slider in GUI to be able to chage the background color
    @IBOutlet weak var colorSlider: UISlider!
    
    @IBAction func colorSliderMethod(_ sender: UISlider)
    {
        //get's the values for the current background color
        var currentBackgroundColor : UIColor
   
        
        //creates a variable to hold new color
        var newBackgroundColor : UIColor
        
        //creates variable holding the value from slider
        let sliderValue = CGFloat(sender.value)
        
        //changes the newBackgroundColor variable to new color values
//        newBackgroundColor = UIColor(hue: sliderValue, saturation: 0.5, brightness: 0.5, alpha: 0.5)
        newBackgroundColor = UIColor(red: sliderValue, green: sliderValue, blue: sliderValue, alpha: CGFloat(1))
        
        //changest the background color
        self.view.backgroundColor = newBackgroundColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

