//
//  ViewController.swift
//  Whats that Animal
//
//  Created by Mahsha Tizhoush on 3/4/19.
//  Copyright © 2019 Mahsha. All rights reserved.
//

import UIKit
import AVFoundation

class MainMenuViewController: UIViewController {
    
    let backgroundImageView = UIImageView()
    @IBOutlet weak var play: UIButton!
    @IBOutlet weak var select: UIButton!
    @IBOutlet weak var easy: UIButton!
    @IBOutlet weak var medium: UIButton!
    @IBOutlet weak var hard: UIButton!
    @IBOutlet var selectionButtons: [UIButton]!
    @IBOutlet weak var stop: UIButton!
    
    var selection: String = ""
    var background: AVAudioPlayer?
    var musicOff: Bool = false
    var isTableVisible: Bool = false
    
    @IBAction func playButton(_ sender: Any) {
        if selection == "Easy"
        {
            self.performSegue(withIdentifier: "EasySegue", sender: self)
        }
        else if selection == "Medium"
        {
            self.performSegue(withIdentifier: "MediumSegue", sender: self)
        }
        else if selection == "Hard"
        {
            self.performSegue(withIdentifier: "HardSegue", sender: self)
        }
        else
        {
            self.performSegue(withIdentifier: "EasySegue", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()
        play.layer.cornerRadius = 15
        select.layer.cornerRadius = 15
        easy.layer.cornerRadius = 15
        medium.layer.cornerRadius = 15
        hard.layer.cornerRadius = 15
        stop.layer.cornerRadius = 15
        
        if musicOff == false
        {
            guard let path3 = Bundle.main.path(forResource: "Wood", ofType: ".mp3")
                else {return }
            let url3 = URL(fileURLWithPath: path3)
            background = try? AVAudioPlayer(contentsOf: url3, fileTypeHint: nil)
            background?.prepareToPlay()
            background?.numberOfLoops = -1
            background?.play()
            background?.volume = 0.8
        }
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
    
    @IBAction func handleSelection(_ sender: Any) {
        selectionButtons.forEach { (button) in UIView.animate(withDuration: 0.5, animations: { button.isHidden = !button.isHidden })
        }
    }
    
    @IBAction func difficultyChosen(_ sender: UIButton) {
        if sender.tag == 1
        {
            selection = "Easy"
        }
        else if sender.tag == 2
        {
            selection = "Medium"
        }
        else if sender.tag == 3
        {
            selection = "Hard"
        }
    }
    
    @IBAction func stopMusic(_ sender: UIButton) {
        background?.stop()
        musicOff = true
    }
}

