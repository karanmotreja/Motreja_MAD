//
//  ViewController.swift
//  lab1Final
//
//  Created by Karan Motreja on 9/13/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func button1(_ sender: UIButton) {
        messageText.text = "Jimmy Garoppolo"
        artImage.image = UIImage(named: "jg1")
    }
    
    @IBOutlet weak var messageText: UILabel!
    
    @IBAction func button2(_ sender: UIButton) {
        messageText.text = "Patrick Willis"
        artImage.image = UIImage(named: "pwilli")
    }
    
    @IBOutlet weak var artImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

