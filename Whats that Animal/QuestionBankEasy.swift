//
//  Question Bank.swift
//  Whats that Animal
//
//  Created by Mahsha Tizhoush on 3/13/19.
//  Copyright © 2019 Mahsha. All rights reserved.
//

import Foundation

class QuestionBankEasy {
    var list = [Question]()
    
    init() {
        list.append(Question(image: "dog", questionText: "This animal is commonly known as mans best friend.", choice1: "Cat", choice2: "Pig", choice3: "Dog", choice4: "Sheep", answer: 3))
        
        list.append(Question(image: "pig", questionText: "This animal loves to roll around in mud.", choice1: "Sheep", choice2: "Dog", choice3: "Goat", choice4: "Pig", answer: 4))
        
        list.append(Question(image: "cat", questionText: "This animal spends most of its time sleeping.", choice1: "Pig", choice2: "Cat", choice3: "Chicken", choice4: "Dog", answer: 2))
        
        list.append(Question(image: "chicken", questionText: "These animals lay eggs.", choice1: "Dog", choice2: "Cat", choice3: "Chicken", choice4: "Pig", answer: 3))
        
        list.append(Question(image: "duck", questionText: "This animal can sleep with one eye open.", choice1: "Duck", choice2: "Cat", choice3: "Goose", choice4: "Dog", answer: 1))
        
        list.append(Question(image: "squirrel", questionText: "Nuts are the most common item that this animal eats.", choice1: "Mouse", choice2: "Rabbit", choice3: "Duck", choice4: "Squirrel", answer: 4))
        
        list.append(Question(image: "goat", questionText: "This animal can be taught their name and to come when called.", choice1: "Pig", choice2: "Horse", choice3: "Goat", choice4: "Sheep", answer: 3))
        
        list.append(Question(image: "goose", questionText: "These animals fly in a V shape.", choice1: "Duck", choice2: "Squirrel", choice3: "Goose", choice4: "Dog", answer: 3))
        
        list.append(Question(image: "sheep", questionText: "This animals wool is used to make clothing.", choice1: "Sheep", choice2: "Goat", choice3: "Dog", choice4: "Cow", answer: 1))
        
        list.append(Question(image: "horse", questionText: "This animal can sleep both standing up and laying down.", choice1: "Goat", choice2: "Sheep", choice3: "Cow", choice4: "Horse", answer: 4))
        
        list.append(Question(image: "mouse", questionText: "This animal eats between 15 and 20 times a day.", choice1: "Squirrel", choice2: "Rabbit", choice3: "Mouse", choice4: "Chicken", answer: 3))
    
        list.append(Question(image: "rabbit", questionText: "Its ears can turn in any direction.", choice1: "Mouse", choice2: "Rabbit", choice3: "Squirrel", choice4: "Goose", answer: 2))
    }
}
