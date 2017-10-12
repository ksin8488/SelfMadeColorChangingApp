//
//  ViewController.swift
//  SelfMadeColorChangingApp
//
//  Created by Singh, Kashish on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

//Creates a function using UIcolor to get the RGB values for the current background color
extension UIColor
{
    func rgb() -> (red:Int, green:Int, blue:Int, alpha:Int)?
    {
        var fRed : CGFloat = 0
        var fGreen : CGFloat = 0
        var fBlue : CGFloat = 0
        var fAlpha : CGFloat = 0
        if self.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha)
        {
            let iRed = Int(fRed * 255.0)
            let iGreen = Int(fGreen * 255.0)
            let iBlue = Int(fBlue * 255.0)
            let iAlpha = Int(fAlpha * 255.0)
            
            return (red:iRed, green:iGreen, blue:iBlue, alpha:iAlpha)
        }
        else
        {
            //could not extract RGBA components:
            return nil
        }
    }
}
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
        view.backgroundColor = view.backgroundColor?.withAlphaComponent(CGFloat (colorSlider.value))    //Code made by Derek Vawdrey
        
        //Function to get's the RBB values for the current background
    
 //How to get a return for the current background color - UIColor(red:1,green:4,blue:0,alpha:1).rgb()?.redGreenOrBlueName
        
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

