//
//  QuizBrain.swift
//  quizapp
//
//  Created by Garvita Katyal on 11/10/21.
//

import Foundation

struct QuizBrain {
    
    var questionBank = [
        
        Questions(text: "5+2 = 9", answer: "False"),
        Questions(text: "9+1 = 10", answer: "True"),
        Questions(text: "10-3 = 6", answer: "False"),
        Questions(text: "8+8 = 16", answer: "True"),]
    
   var questionNumber = 0
    
    //create a function for displaying question.
    //1.Define
    //2.Number of paramenters.
    //3.return type -> string.
    //4. return
    //5. calling
    func getQuestion() -> String {
        
        return questionBank[questionNumber].text
        
    }
    
    func checkAnswer(_ userInput : String) -> Bool{
        
        if userInput == questionBank[questionNumber].answer {
            return true
        }
        
        else {
            return false
        }
    }
    
    mutating func nextQuestion() {
        
        if questionNumber + 1 < questionBank.count  {
            questionNumber += 1
        }
        
        else {
        questionNumber = 0
        }
    }
}

