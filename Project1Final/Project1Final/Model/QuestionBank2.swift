//
//  QuestionBank2.swift
//  Project1Final
//
//  Created by Karan Motreja on 10/15/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import Foundation

class QuestionBank2
{
    var list = [Question2]()
    
    init()
    {
        //Question 1
        list.append(Question2(questionText: "Which of these NFL teams is in the NFC West?", choiceA: "Arizona Cardinals", choiceB: "Atlanta Falcons", choiceC: "Denver Broncos", choiceD: "Dallas Cowboys", answer: 1))
        
        //Question 2
        list.append(Question2(questionText: "Name the division that these teams are in: Denver Broncos, Oakland Raiders, Kansas City Chiefs, Los Angeles Chargers.", choiceA: "NFC East", choiceB: "AFC South", choiceC: "NFC North", choiceD: "AFC West", answer: 4))
        
        //Question 3
        list.append(Question2(questionText: "Which division has the most Super Bowl wins since 1970?", choiceA: "NFC East", choiceB: "NFC North", choiceC: "AFC East", choiceD: "NFC West", answer: 1))
        
        //Question 4
        list.append(Question2(questionText: "The Tennessee Titans, Jacksonville Jaguars, Indianapolis Colts, and Houston Texans are in what division?", choiceA: "NFC South", choiceB: "AFC South", choiceC: "NFC North", choiceD: "AFC North", answer: 2))
        
        //Question 5
        list.append(Question2(questionText: "Which of these NFL teams is in the AFC East?", choiceA: "New York Giants", choiceB: "New Orleans Saints", choiceC: "Los Angeles Rams", choiceD: "New York Jets", answer: 4))
        
        
    }
}

