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
    
    var questionBank = [["5+2 = 9", "False"],
                        ["9+1 = 10", "True"],
                        ["10-3 = 6", "False"],
                        ["8+8 = 16", "True"]]
   var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
}

    func updateUI(){
        questions.text = questionBank[0][0]
        
    }
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        userInput = sender.currentTitle!
        
        if userInput == AnswerBank {
            sender.backgroundColor = green
        }
    }
    
    
    
    
}

