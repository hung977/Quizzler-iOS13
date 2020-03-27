//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by admin on 10/21/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(text: "A slug's blood is green.", answer: "true"),
        Question(text: "Approximately one quarter of human bones are in the feet.", answer: "true"),
        Question(text: "The total surface area of two human lungs is approximately 70 square metres.", answer: "true"),
        Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "true"),
        Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: "false"),
        Question(text: "It is illegal to pee in the Ocean in Portugal.", answer: "true"),
        Question(text: "You can lead a cow down stairs but not up stairs.", answer: "false"),
        Question(text: "Google was originally called 'Backrub'.", answer: "true"),
        Question(text: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "true"),
        Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "false"),
        Question(text: "No piece of square dry paper can be folded in half more than 7 times.", answer: "false"),
        Question(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "true")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        } else {
            return false
        }
    }
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProcess() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        questionNumber += 1
        if questionNumber == quiz.count{
            questionNumber = 0
            score = 0
        }
    }
    func getScore() -> Int {
        return score
    }
    
}
