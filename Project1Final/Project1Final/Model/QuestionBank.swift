//
//  QuestionBank.swift
//  Project1Final
//
//  Created by Karan Motreja on 10/15/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import Foundation

class QuestionBank
{
    var list = [Question]()
    
    init()
    {
        //Question 1
        list.append(Question(questionText: "Which of these NFL teams has a helmet in their logo?", choiceA: "San Francisco 49ers", choiceB: "Carolina Panthers", choiceC: "Cleveland Browns", choiceD: "Denver Broncos", answer: 3))
        
        //Question 2
        list.append(Question(questionText: "This franchise's logo was inspired by Northwest Coast art.", choiceA: "Chicago Bears", choiceB: "Oakland Raiders", choiceC: "New England Patriots", choiceD: "Seattle Seahawks", answer: 4))
        
        //Question 3
        list.append(Question(questionText: "Which teams logo is represented by a blue star?", choiceA: "New York Giants", choiceB: "Dallas Cowboys", choiceC: "Cleveland Browns", choiceD: "Los Angeles Rams", answer: 2))
        
        //Question 4
        list.append(Question(questionText: "Which NFL team has a flag in their logo?", choiceA: "Minnesota Vikings", choiceB: "Carolina Panthers", choiceC: "Tampa Bay Buccaneers", choiceD: "Arizona Cardinals", answer: 3))
        
        //Question 5
        list.append(Question(questionText: "Which of these NFL teams utilizes an animal in their logo?", choiceA: "Miami Dolphins", choiceB: "New Orleans Saints", choiceC: "Washington Redskins", choiceD: "New York Jets", answer: 1))
        
        
    }
}
