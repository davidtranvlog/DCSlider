//
//  ViewController.swift
//  UISlider
//
//  Created by Duc Tran on 5/5/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderValueLabel: UILabel!
    var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        slider = UISlider(frame: CGRectMake(100, 100, 200, 23))
        slider.center = view.center
        
        slider.minimumValue = 0
        slider.maximumValue = 100
        
        slider.value = slider.maximumValue / 3.0
        
        view.addSubview(slider)
        
        slider.addTarget(self, action: "sliderValueChanged:", forControlEvents: UIControlEvents.ValueChanged)
        
        slider.continuous = false
        
        changeThumbImage()
        changeSliderMinMaxColor()
    }
    
    func sliderValueChanged(sender: UISlider)
    {
        sliderValueLabel.text = "\(sender.value)"
    }
    
    func changeThumbImage()
    {
        slider.setThumbImage(UIImage(named: "thumbNormal"), forState: UIControlState.Normal)
        slider.setThumbImage(UIImage(named: "thumbHighlighted"), forState: .Highlighted)
    }
    
    func changeSliderMinMaxColor()
    {
        slider.minimumTrackTintColor = UIColor.greenColor()
        slider.maximumTrackTintColor = UIColor.blackColor()
    }
    
}































