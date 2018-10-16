//
//  QuestionBank3.swift
//  Project1Final
//
//  Created by Karan Motreja on 10/16/18.
//  Copyright © 2018 Karan Motreja. All rights reserved.
//

import Foundation


class QuestionBank3
{
    var list = [Question3]()
    
    init()
    {
        //Question 1
        list.append(Question3(questionText: "The Cowboys led the 49ers, 27-21. Joe Montana found Dwight Clark for a TD with time expiring for the win.", choiceA: "Music City Miracle", choiceB: "Helicopter", choiceC: "The Catch", choiceD: "The Catch II", answer: 3))
        
        //Question 2
        list.append(Question3(questionText: "Which New England Patriot intercepted Russel Wilson at the goal line to clinch a Super Bowl win?", choiceA: "Malcolm Butler", choiceB: "Dont'a Hightower", choiceC: "Stephon Gillmore", choiceD: "Devin McCourty", answer: 1))
        
        //Question 3
        list.append(Question3(questionText: "Marshawn Lynch evades multiple defenders on a 67-yard TD to clinch a playoff win against the New Orleans Saints. Name that play!", choiceA: "Beast Mode", choiceB: "Beast Quake", choiceC: "Feed the Beast", choiceD: "Skittles", answer: 2))
        
        //Question 4
        list.append(Question3(questionText: "In 2010, DeSean Jackson, with time expiring, returned a punt for a TD to give the Eagles their first and only lead of the game against the Giants.", choiceA: "Music City Miracle", choiceB: "The Return", choiceC: "Miracle at the Meadowlands", choiceD: "Miracle at the New Meadowlands", answer: 4))
        
        //Question 5
        list.append(Question3(questionText: "With one play left, QB Case Keenum threw a deep ball to Stefon Diggs, which he caught and ran untouched for an improbable touchdown to win the game against the Saints.", choiceA: "Minneapolis Miracle", choiceB: "Mile High Miracle", choiceC: "New Orleans Miracle", choiceD: "The Improbable Comeback", answer: 1))
        
        
    }
}

