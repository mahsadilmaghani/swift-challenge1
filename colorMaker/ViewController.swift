//
//  ViewController.swift
//  colorMaker
//
//  Created by Mahsa on 28/10/2018.
//  Copyright © 2018 Mahsa. All rights reserved.
//

import UIKit

class ViewController:UIViewController {
    var isRedSwitchOn: Bool = false
    var isGreenSwitchOn: Bool = false
    var isBlueSwitchOn: Bool = false
    var redValue: CGFloat = 0
    var greenValue: CGFloat = 0
    var blueValue: CGFloat = 0
    var minimumValue: CGFloat = 0
    var maximumValue: CGFloat = 1
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorView.backgroundColor = getColor()
        
    }
    @IBAction func redSwitch(_ sender: UISwitch) {
        func setOn(_: Bool, animated: Bool) -> Bool {
            if !isRedSwitchOn {
                isRedSwitchOn = true
            } else {
                isRedSwitchOn = false
            }
            return isRedSwitchOn
        }
        isRedSwitchOn = setOn(true, animated: true)
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        if isRedSwitchOn {
            redValue = CGFloat(sender.value);
            //print("Red slider value ", redValue)
            colorView.backgroundColor = getColor()
        }
    }
    
    @IBAction func greenSwitch(_ sender: UISwitch) {
        func setOn(_: Bool, animated: Bool) -> Bool {
            if !isGreenSwitchOn {
                isGreenSwitchOn = true
            } else {
                isGreenSwitchOn = false
            }
            return isGreenSwitchOn
        }
        isGreenSwitchOn = setOn(true, animated: true)
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        if isGreenSwitchOn {
            greenValue = CGFloat(sender.value)
            colorView.backgroundColor = getColor()
            //print("Green slider value ", greenValue)
        }
    }
    
    @IBAction func blueSwitch(_ sender: UISwitch) {
        func setOn(_: Bool, animated: Bool) -> Bool {
            if !isBlueSwitchOn {
                isBlueSwitchOn = true
            } else {
                isBlueSwitchOn = false
            }
            return isBlueSwitchOn
        }
        isBlueSwitchOn = setOn(true, animated: true)
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        if isBlueSwitchOn {
            blueValue = CGFloat(sender.value);
            colorView.backgroundColor = getColor()
            //print("Blue slider value ", blueValue)
        }
    }
    
    func getColor() -> UIColor {
        //Generate between 0 to 1
        return UIColor(red:CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue), alpha: 1.0)
    }
   
    @IBAction func resetButton (_ sender: UIButton) {
        resetTapped()
    }
    func resetTapped() {
        redSlider.value = 0.0
        greenSlider.value = 0.0
        blueSlider.value = 0.0
        colorView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
    }
}

