//
//  QuestionBankMedium.swift
//  Whats that Animal
//
//  Created by Mahsha Tizhoush on 3/13/19.
//  Copyright © 2019 Mahsha. All rights reserved.
//

import Foundation

class QuestionBankMedium {
    var list = [Question]()
    
    init() {
        list.append(Question(image: "tiger", questionText: "Unlike most members of the cat family, these big cats enjoy swimming.", choice1: "Lion", choice2: "Leopard", choice3: "Cougar", choice4: "Tiger", answer: 4))
        
        list.append(Question(image: "blackbear", questionText: "This animal is an excellent climber.", choice1: "Grizzly Bear", choice2: "Black Bear", choice3: "Polar Bear", choice4: "Panda Bear", answer: 2))
        
        list.append(Question(image: "alligator", questionText: "These animals are social creature and often stay in a group.", choice1: "American Alligator", choice2: "Saltwater Crocodile", choice3: "Komodo Dragon", choice4: "Black Caiman", answer: 1))
        
        list.append(Question(image: "camel", questionText: "This animal has two rows of eyelashes.", choice1: "Camel", choice2: "Llama", choice3: "Alpaca", choice4: "Horse", answer: 1))

        list.append(Question(image: "zebra", questionText: "The ears of this animal show its mood.", choice1: "Horse", choice2: "Llama", choice3: "Zebra", choice4: "Donkey", answer: 3))

        list.append(Question(image: "coyote", questionText: "This animal will eat almost anything.", choice1: "Wolf", choice2: "Dog", choice3: "Fox", choice4: "Coyote", answer: 4))

        list.append(Question(image: "elephant", questionText: "They are the largest land animals on Earth.", choice1: "Manatee", choice2: "Elephant", choice3: "Rhino", choice4: "Horse", answer: 2))
        
        list.append(Question(image: "toucan", questionText: "This animal has small wings and is not very good at flying.", choice1: "Cockatoo", choice2: "Toucan", choice3: "Lovebird", choice4: "Parrot", answer: 2))
        
        list.append(Question(image: "tortoise", questionText: "These animals can't swim, but they can hold their breath for a long time.", choice1: "Sea Turtle", choice2: "Alligator", choice3: "Tortoise", choice4: "Otter", answer: 3))
        
        list.append(Question(image: "flamingo", questionText: "This animal stands on one leg when it is resting.", choice1: "Raven", choice2: "Toucan", choice3: "Flamingo", choice4: "Pelican", answer: 3))

        list.append(Question(image: "owl", questionText: "This animal is farsighted, meaning they can't see things close to their eyes clearly.", choice1: "Bat", choice2: "Eagle", choice3: "Raven", choice4: "Owl", answer: 4))

        list.append(Question(image: "giraffe", questionText: "This animal is the tallest mammals on Earth.", choice1: "Camel", choice2: "Giraffe", choice3: "Alpaca", choice4: "Donkey", answer: 2))

        list.append(Question(image: "penguin", questionText: "These animals huddle together to keep warm.", choice1: "Owl", choice2: "Seagull", choice3: "Penguin", choice4: "Pelican", answer: 3))

        list.append(Question(image: "grizzlybear", questionText: "This animal hibernates for between 5 to 8 months.", choice1: "Grizzly Bear", choice2: "Black Bear", choice3: "Polar Bear", choice4: "Sun Bear", answer: 1))
        
        list.append(Question(image: "lion", questionText: "They live in groups of 10 to 15 animals called prides.", choice1: "Cougar", choice2: "Panther", choice3: "Tiger", choice4: "Lion", answer: 4))
    }
}
