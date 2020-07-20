//
//  QuizqBrain.swift
//  Quizzler-iOS13
//
//  Created by Circuler on 18/7/2563 BE.
//  Copyright © 2563 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    let quiz = Question(
        text: ["3 - 5 = -2 ?","Bangkok is the capital of Thailand.","MacOS is the greatest operation system in the world."],
        answer: ["True","True","False"]
    )
    
    var quizIndex = 0
    var totalScore = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz.answer[quizIndex]
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    mutating func getQuestionText() ->  String {
        if quizIndex + 1 < quiz.text.count
        {
            quizIndex += 1
        }
        else
        {
            quizIndex = 0
        }
        return quiz.text[quizIndex]
    }
    
    func getProgress() -> Float {
       return Float(quizIndex) / Float(quiz.text.count)
    }
    
    mutating func getScore(_ userGotItRight: Bool) -> Int {
        if(userGotItRight) {
            totalScore += 1
        }
        return totalScore
    }
    
    func testBranch() {
        
    }
    
}
