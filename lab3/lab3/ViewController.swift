//
//  ViewController.swift
//  lab3
//
//  Created by Karan Motreja on 10/2/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBOutlet weak var betAmount: UILabel!
    @IBOutlet weak var bet: UITextField!
    
    @IBOutlet weak var spread: UILabel!
    @IBOutlet weak var spreadAmount: UITextField!
    
    @IBOutlet weak var underdog: UILabel!
    @IBOutlet weak var finalUnderdog: UILabel!
    
    @IBOutlet weak var favorite: UILabel!
    @IBOutlet weak var finalFavorite: UILabel!
    
    //function for keyboard to disappear when tapping on background
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    //create function to calculate totals
    func updateBetTotals()
    {
        var amount:Float
        var spreadAmnt:Float
        
        if bet.text!.isEmpty
        {
            amount = 0.0
        }
        else
        {
            amount = Float(bet.text!)!
        }
        
        if spreadAmount.text!.isEmpty {
            
            spreadAmnt = 0.0
            let alert = UIAlertController(title: "Note", message: "The spread amount must be greater than 0 (and will likely be 3 digits)", preferredStyle: UIAlertControllerStyle.alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(cancelAction)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {action in
                self.spreadAmount.text = "100"
                self.updateBetTotals()
            })
            
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
        }
        else
        {
            spreadAmnt = Float(spreadAmount.text!)!
        }
        
        let underdogWinning = (spreadAmnt/100) * amount
        let favoriteWinning = (100/spreadAmnt) * amount
        
        //add winnings to original bet for total amount
        let underdogTotal = underdogWinning + amount
        let favoriteTotal = favoriteWinning + amount
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.currency
        
        finalUnderdog.text = numberFormatter.string(from: NSNumber(value: underdogTotal))
        finalFavorite.text = numberFormatter.string(from: NSNumber(value: favoriteTotal))
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateBetTotals()
    }
    
    override func viewDidLoad() {
        bet.delegate = self
        spreadAmount.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

