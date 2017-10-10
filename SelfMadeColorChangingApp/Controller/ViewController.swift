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
        if(colorButton.backgroundColor == .green)
        {
            colorButton.backgroundColor = .red
        }
        else
        {
            colorButton.backgroundColor = .green
        }
        view.backgroundColor = createRandomColor()
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

