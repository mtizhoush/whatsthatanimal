//
//  Question.swift
//  Whats that Animal
//
//  Created by Mahsha Tizhoush on 3/13/19.
//  Copyright © 2019 Mahsha. All rights reserved.
//

import Foundation

class Question {
    let questionImage: String
    let question: String
    let option1: String
    let option2: String
    let option3: String
    let option4: String
    let correctAnswer: Int
    
    init(image: String, questionText: String, choice1: String, choice2: String, choice3: String, choice4: String, answer: Int)
    {
        questionImage = image
        question = questionText
        option1 = choice1
        option2 = choice2
        option3 = choice3
        option4 = choice4
        correctAnswer = answer
    }
         
}
