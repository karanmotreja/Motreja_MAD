//
//  ViewController.swift
//  midterm
//
//  Created by Karan Motreja on 10/18/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    

    
    //Keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func buttonCalculate(_ sender: UIButton)
    {
        updateWorkoutTotals()
    }
    @IBOutlet weak var workoutTime: UILabel!
    @IBOutlet weak var workoutInput: UITextField!
    
    @IBOutlet weak var totalMiles: UILabel!
    @IBOutlet weak var totalCalories: UILabel!
    
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var categories: UISegmentedControl!
    @IBAction func changeCategory(_ sender: UISegmentedControl)
    {
        if categories.selectedSegmentIndex == 0
        {
            updateWorkoutTotals()
            mainImage.image = UIImage(named: "run")
        }
        else if categories.selectedSegmentIndex == 1
        {
            updateSwimTotals()
            mainImage.image = UIImage(named: "swim")
        }
        else if categories.selectedSegmentIndex == 2
        {
            updateBikeTotals()
            mainImage.image = UIImage(named: "bike")
        }
    }
    
    
    
    override func viewDidLoad() {
        workoutInput.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func updateWorkoutTotals()
    {
        var time: Float
        
        if workoutInput.text!.isEmpty
        {
            time = 30.00
            let alert = UIAlertController(title: "Warning", message: "You need to workout more!", preferredStyle: UIAlertControllerStyle.alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(cancelAction)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {action in
                self.workoutInput.text = "30.00"
                self.updateWorkoutTotals()
            })
            
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
        }
        else
        {
            time = Float(workoutInput.text!)!
        }
        
        let milesRun = (time / 10)
        let calories = (time * 10)
    
        let numFormatter = NumberFormatter()
        numFormatter.numberStyle = NumberFormatter.Style.decimal
        
        totalMiles.text = numFormatter.string(from: NSNumber(value: milesRun))
        totalCalories.text = numFormatter.string(from: NSNumber(value: calories))
    
    }
    
    func updateSwimTotals()
    {
        var time2: Float
        
        if workoutInput.text!.isEmpty
        {
            time2 = 30.00
            let alert = UIAlertController(title: "Warning", message: "You need to workout more!", preferredStyle: UIAlertControllerStyle.alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(cancelAction)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {action in
                self.workoutInput.text = "30.00"
                self.updateWorkoutTotals()
            })
            
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
        }
        else
        {
            time2 = Float(workoutInput.text!)!
        }
        
        let milesSwam = (time2 / 30)
        let caloriesSwam = (time2 * (420/60))
        
        let numFormatter = NumberFormatter()
        numFormatter.numberStyle = NumberFormatter.Style.decimal
        
        totalMiles.text = numFormatter.string(from: NSNumber(value: milesSwam))
        totalCalories.text = numFormatter.string(from: NSNumber(value: caloriesSwam))
        
    }
    
    
    func updateBikeTotals()
    {
        var time3: Float
        
        if workoutInput.text!.isEmpty
        {
            time3 = 30.00
            let alert = UIAlertController(title: "Warning", message: "You need to workout more!", preferredStyle: UIAlertControllerStyle.alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(cancelAction)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {action in
                self.workoutInput.text = "30.00"
                self.updateWorkoutTotals()
            })
            
            alert.addAction(okAction)
            
            present(alert, animated: true, completion: nil)
        }
        else
        {
            time3 = Float(workoutInput.text!)!
        }
        
        let milesBiked = (time3 / 4)
        let caloriesBike = (time3 * (510/60))
        
        let numFormatter = NumberFormatter()
        numFormatter.numberStyle = NumberFormatter.Style.decimal
        
        totalMiles.text = numFormatter.string(from: NSNumber(value: milesBiked))
        totalCalories.text = numFormatter.string(from: NSNumber(value: caloriesBike))
        
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
//        updateWorkoutTotals()
//        updateSwimTotals()
//        updateBikeTotals()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}

