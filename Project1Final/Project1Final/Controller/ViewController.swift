//
//  ViewController.swift
//  Project1Final
//
//  Created by Karan Motreja on 10/15/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    
    // Outlet for Questions
    @IBOutlet weak var questionLabel: UILabel!
    
    // Outlet for buttons
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateQuestion()
        updateView()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Action for Buttons
    
    @IBAction func answerPressed(_ sender: UIButton)
    {
        if sender.tag == selectedAnswer
        {
            print("correct")
            score += 1
        }
        else
        {
            print("incorrect")
        }
        
        questionNumber += 1
        updateQuestion()
    }
    
    func updateQuestion()
    {
        
        if questionNumber <= allQuestions.list.count - 1
        {
            questionLabel.text = allQuestions.list[questionNumber].question
            buttonA.setTitle(allQuestions.list[questionNumber].buttonA, for: UIControlState.normal)
            buttonB.setTitle(allQuestions.list[questionNumber].buttonB, for: UIControlState.normal)
            buttonC.setTitle(allQuestions.list[questionNumber].buttonC, for: UIControlState.normal)
            buttonD.setTitle(allQuestions.list[questionNumber].buttonD, for: UIControlState.normal)
            
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            
        }
        else
        {
            let alert = UIAlertController(title: "You got \(score)/5!", message: "End of Quiz. Would you like to restart?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
        updateView()
        
    }
    
    func updateView()
    {
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
        
    }
    
    func restartQuiz()
    {
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }
    

}

