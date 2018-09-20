//
//  ViewController.swift
//  lab2
//
//  Created by Karan Motreja on 9/18/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bothImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageControl: UISegmentedControl!
    
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        updateImage()
        updateCaps()
    }
    @IBOutlet weak var capitalSwitch: UISwitch!
    
    @IBAction func updateFont(_ sender: UISwitch) {
       updateCaps()
    }
    
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize = sender.value
        fontSizeLabel.text = String(format: "%.0f", fontSize)
        let fontSizeCGFloat = CGFloat(fontSize)
        titleLabel.font = UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    
    func updateImage()
    {
        if imageControl.selectedSegmentIndex == 0
        {
            titleLabel.text = "Tupac Shakur"
            bothImage.image = UIImage(named: "tupac")
        }
        else if imageControl.selectedSegmentIndex == 1
        {
            titleLabel.text = "Biggie Smalls"
            bothImage.image = UIImage(named: "biggie")
        }
    }
    
    func updateCaps()
    {
        if capitalSwitch.isOn
        {
            titleLabel.text = titleLabel.text?.uppercased()
        }
        else
        {
            titleLabel.text = titleLabel.text?.lowercased()
        }
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

