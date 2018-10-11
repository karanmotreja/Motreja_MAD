//
//  Scene2ViewController.swift
//  lab4
//
//  Created by Karan Motreja on 10/10/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        userTeam.delegate = self
        userPlayer.delegate = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBOutlet weak var userPlayer: UITextField!
    @IBOutlet weak var userTeam: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "doneFavs"
        {
            let scene1ViewController = segue.destination as! ViewController
            
            if userPlayer.text!.isEmpty == false
            {
                scene1ViewController.user.favPlayer = userPlayer.text
            }
            if userTeam.text!.isEmpty == false
            {
                scene1ViewController.user.favTeam = userTeam.text
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
