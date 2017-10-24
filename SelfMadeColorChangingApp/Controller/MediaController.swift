//
//  MediaController.swift
//  SelfMadeColorChangingApp
//
//  Created by Singh, Kashish on 10/18/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

public class MediaController : UIViewController
{
    private lazy var color: ColorTools = ColorTools() //formal way
    private var imageCounter : Int = 0
    private var soundPlayer : AVAudioPlayer?
    
    public override func viewDidLoad()
    {
        super.viewDidLoad() //automatically gets called as soon as you go to this screen
        view.backgroundColor = color.createRandomColor()
    }
    
//    public override func didReceiveMemoryWarning()
//    {
//        super.didReceiveMemoryWrning()
//    }

    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var soundSlider: UISlider!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var imageFrame: UIImageView!
    
    @IBAction func soundButtonMethod(_ sender: UIButton)
    {
        playMusicFile()
        view.backgroundColor = color.createRandomColor()
    }
    
    @IBAction func soundSliderMethod(_ sender: UISlider)
    {
        let seekTime = Double (soundSlider.value)
        soundPlayer?.currentTime = seekTime
    }
    
    private func playMusicFile() -> Void
    {
        if let isPlaying = soundPlayer?.isPlaying
        {
            if(isPlaying)
            {
                soundPlayer?.pause()
            }
            else
            {
                soundPlayer?.play()
            }
        }
//        if((soundPlayer?.isPlaying)!)         NOT safe code
//        {
//            soundPlayer?.pause()
//        }
//        else
//        {
//            soundPlayer?.play()
//        }
    }
    
    private func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsset (name: "Gisher Music - Big Bad Voodoo Daddy - Jumpin Jack")
        {
            do
            {
                try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                soundSlider.maximumValue = Float ((soundPlayer?.duration)!)
               Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }
            catch
            {
                print("Audio File not Found")
            }
        }
    }
    
    @objc private func updateSlider() -> Void
    {
        soundSlider.value = Float ((soundPlayer?.currentTime)!)
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
