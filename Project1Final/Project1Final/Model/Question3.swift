//
//  Question3.swift
//  Project1Final
//
//  Created by Karan Motreja on 10/16/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import Foundation

class Question3
{
    let question: String
    let buttonA: String
    let buttonB: String
    let buttonC: String
    let buttonD: String
    let correctAnswer: Int
    
    init(questionText: String, choiceA: String, choiceB: String, choiceC: String, choiceD: String, answer: Int)
    {
        question = questionText
        buttonA = choiceA
        buttonB = choiceB
        buttonC = choiceC
        buttonD = choiceD
        correctAnswer = answer
    }
}
