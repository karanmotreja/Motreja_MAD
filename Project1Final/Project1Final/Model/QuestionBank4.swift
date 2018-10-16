//
//  QuestionBank4.swift
//  Project1Final
//
//  Created by Karan Motreja on 10/16/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import Foundation


class QuestionBank4
{
    var list = [Question4]()
    
    init()
    {
        //Question 1
        list.append(Question4(questionText: "In Super Bowl XLII, this team upset the 18-0 New England Patriots. Who was it?", choiceA: "New York Giants", choiceB: "New York Jets", choiceC: "Atlanta Falcons", choiceD: "Philadelphia Eagles", answer: 1))
        
        //Question 2
        list.append(Question4(questionText: "Since Peyton Manning retired, how many quarterbacks have started for the Denver Broncos?", choiceA: "6", choiceB: "2", choiceC: "4", choiceD: "5", answer: 3))
        
        //Question 3
        list.append(Question4(questionText: "Who has been the exclusive maker of NFL Football’s?", choiceA: "Nike", choiceB: "Reebok", choiceC: "Adidas", choiceD: "Wilson", answer: 4))
        
        //Question 4
        list.append(Question4(questionText: "Which QB has won the most playoff games in NFL history?", choiceA: "Joe Montana", choiceB: "Drew Brees", choiceC: "Tom Brady", choiceD: "Peyton Manning", answer: 3))
        
        //Question 5
        list.append(Question4(questionText: "What is the name that is given to the player who is selected with the very last pick in the NFL Draft?", choiceA: "Last Pick Sally", choiceB: "Mr. Irrelevant", choiceC: "Worst Player in the Draft", choiceD: "Mr. Ignorant", answer: 2))
        
        
    }
}

