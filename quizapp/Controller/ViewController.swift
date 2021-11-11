//
//  ViewController.swift
//  quizapp
//
//  Created by Garvita Katyal on 10/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    //outlets form variables and actions form a function. In this case buttons are outlets and functions both.
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questions: UILabel!
    
    var quizbrain = QuizBrain()
    //creating an object to integrate model and view controller.
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
}

    @objc func updateUI(){
        questions.text = quizbrain.getQuestion()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear

        
        
    }
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userInput = sender.currentTitle!
        let checkAnswer = quizbrain.checkAnswer(userInput)
        
        if checkAnswer {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        
        quizbrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
        
    }
    
    
    
    
}

