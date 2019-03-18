//
//  QuestionBankHard.swift
//  Whats that Animal
//
//  Created by Mahsha Tizhoush on 3/13/19.
//  Copyright © 2019 Mahsha. All rights reserved.
//

import Foundation

class QuestionBankHard {
    var list = [Question]()
    
    init() {
        list.append(Question(image: "crestedgecko", questionText: "Unlike most members of the cat family, these big cats enjoy swimming.", choice1: "Leopard Gecko", choice2: "Crested Gecko", choice3: "Gargoyle Gecko", choice4: "Iguana", answer: 2))
        
        list.append(Question(image: "ballpython", questionText: "This animal curls themselves up when it feels threatened.", choice1: "Boa Constrictor", choice2: "Burmese Python", choice3: "Ball Python", choice4: "King Cobra", answer: 3))
        
        list.append(Question(image: "wombat", questionText: "This animal is built for digging.", choice1: "Wombat", choice2: "Wallaby", choice3: "Red Panda", choice4: "Koala Bear", answer: 1))
        
        list.append(Question(image: "shrew", questionText: "These small mammals are only found in Africa.", choice1: "Mouse", choice2: "Elephant Shrew", choice3: "Lemur", choice4: "Chinchilla", answer: 2))

        list.append(Question(image: "tapir", questionText: "These animals can swim, as well as walk underwater.", choice1: "Elephant", choice2: "Boar", choice3: "Donkey", choice4: "Tapir", answer: 4))
        
        list.append(Question(image: "humpbackwhale", questionText: "These animals learn to sing from each other.", choice1: "Sperm Whale", choice2: "Orca", choice3: "Blue Whale", choice4: "Humpback Whale", answer: 4))
        
        list.append(Question(image: "redpanda", questionText: "This animal uses its tail to help it climb trees.", choice1: "Red Panda", choice2: "Giant Panda", choice3: "Red Fox", choice4: "Raccoon", answer: 1))
        
        list.append(Question(image: "impala", questionText: "These animals can leap up to 10 meters in length and 3 meters in height.", choice1: "Impala", choice2: "Zebra", choice3: "Cape Buffalo", choice4: "Blue Wildebeest", answer: 1))
        
        list.append(Question(image: "komododragon", questionText: "It can reach 10 feet in length and weight up to 200 pounds.", choice1: "Crocodile", choice2: "Common Iguana", choice3: "Komodo Dragon", choice4: "Bearded Dragon", answer: 3))
        
        list.append(Question(image: "lemur", questionText: "These animals use their scent to communicate with each other.", choice1: "Raccoon", choice2: "Lemur", choice3: "Slow Loris", choice4: "Squirrel", answer: 2))
    
        list.append(Question(image: "platypus", questionText: "They use their sense of electroreception and dig up muddy river beds with their bill to detect prey.", choice1: "Anteater", choice2: "Porcupine", choice3: "Beaver", choice4: "Platypus", answer: 4))
        
        list.append(Question(image: "leopardgecko", questionText: "These animals store fat and water in their tails.", choice1: "Leopard Gecko", choice2: "Crested Gecko", choice3: "Gargoyle Gecko", choice4: "Bearded Dragon", answer: 3))
        
        list.append(Question(image: "meekrat", questionText: "This animal uses its tail to balance when standing upright.", choice1: "Meekrat", choice2: "Lemur", choice3: "Weasels", choice4: "Ferret", answer: 3))
    }
}
