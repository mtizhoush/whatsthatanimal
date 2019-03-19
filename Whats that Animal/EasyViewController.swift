//
//  ViewController.swift
//  Whats that Animal
//
//  Created by Mahsha Tizhoush on 3/4/19.
//  Copyright © 2019 Mahsha. All rights reserved.
//

import UIKit
import AVFoundation

class EasyViewController: UIViewController {
    
    @IBOutlet weak var animals: UIImageView!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    @IBOutlet weak var option3: UIButton!
    @IBOutlet weak var option4: UIButton!
    @IBOutlet weak var hint: UILabel!
    @IBOutlet weak var mainMenu: UIButton!
    @IBOutlet weak var level: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var header: UIView!
    
    let backgroundImageView = UIImageView()
    
    let allQuestions = QuestionBankEasy()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    var tries: Int = 2
    var answer: String = ""
    var audioPlayer: AVAudioPlayer?
    var wrong: AVAudioPlayer?
    var screenSize = UIScreen.main.bounds
    var screenHeight: CGFloat = 0
    var screenWidth: CGFloat = 0
    var buttonSize: CGFloat = 0
    var fontSize = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        updateQuestion()
        
        guard let path = Bundle.main.path(forResource: "correct3", ofType: ".mp3")
            else {return }
        let url = URL(fileURLWithPath: path)
        audioPlayer = try? AVAudioPlayer(contentsOf: url, fileTypeHint: nil)
        audioPlayer?.prepareToPlay()
        audioPlayer?.setVolume(0.2, fadeDuration: 2)
        
        guard let path2 = Bundle.main.path(forResource: "wrong", ofType: ".mp3")
            else {return }
        let url2 = URL(fileURLWithPath: path2)
        wrong = try? AVAudioPlayer(contentsOf: url2, fileTypeHint: nil)
        wrong?.prepareToPlay()
        wrong?.setVolume(0.5, fadeDuration: 2)
        updateUI()
        
        if UIDevice.current.orientation.isLandscape {
            screenSize = UIScreen.main.bounds
            screenWidth = screenSize.width
            screenHeight = screenSize.height
        } else {
            screenSize = UIScreen.main.bounds
            screenWidth = screenSize.width
            screenHeight = screenSize.height
        }
        
        fontSize = Int(screenHeight / 40)
        option1.layer.cornerRadius = 15
        option2.layer.cornerRadius = 15
        option3.layer.cornerRadius = 15
        option4.layer.cornerRadius = 15
        
        option1.titleLabel!.font = UIFont(name: "Chalkboard SE", size: CGFloat(fontSize))
        option2.titleLabel!.font = UIFont(name: "Chalkboard SE", size: CGFloat(fontSize))
        option3.titleLabel!.font = UIFont(name: "Chalkboard SE", size: CGFloat(fontSize))
        option4.titleLabel!.font = UIFont(name: "Chalkboard SE", size: CGFloat(fontSize))
        scoreLabel.font = UIFont(name: "Chalkboard SE", size: CGFloat(fontSize))
        hint.font = UIFont(name: "Chalkboard SE", size: CGFloat(fontSize))
        mainMenu.titleLabel!.font = UIFont(name: "Chalkboard SE", size: CGFloat(fontSize))
        level.font = UIFont(name: "Chalkboard SE", size: CGFloat(fontSize))
        //animals.image = UIImage(scale: CGFloat(fontSize))
        
    }
    
    func setBackground(){
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "background")
        view.sendSubviewToBack(backgroundImageView)
    }
    
    @IBAction func AnswerPressed(_ sender: UIButton)
    {
        if sender.tag == selectedAnswer && tries > 0 {
            answer = "correct"
            print(answer)
            if tries == 2
            {
                score += 2
            }
            else if tries == 1
            {
                score += 1
            }
            audioPlayer?.play()
            sleep(2)
        }
        else {
            answer = "wrong"
            print(answer)
            tries -= 1
            wrong?.play()
            sleep(1)
        }
        
        if tries == 0 || answer == "correct"
        {
            questionNumber += 1
            updateQuestion()
            tries = 2
            sleep(1)
        }
    }
    
    func updateQuestion() {
        
        if questionNumber < allQuestions.list.count{
            animals.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            hint.text = allQuestions.list[questionNumber].question
            option1.setTitle(allQuestions.list[questionNumber].option1, for: UIControl.State.normal)
            option2.setTitle(allQuestions.list[questionNumber].option2, for: UIControl.State.normal)
            option3.setTitle(allQuestions.list[questionNumber].option3, for: UIControl.State.normal)
            option4.setTitle(allQuestions.list[questionNumber].option4, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
        }
        else {
            let alert = UIAlertController(title: "Well done", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        updateUI()
    }
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        level.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
        
    }
    
    func restartQuiz() {
        score = 0
        questionNumber = 0
        updateQuestion()
    }
    
}


