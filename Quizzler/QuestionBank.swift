//
//  QuestionBank.swift
//  Quizzler
//
//  Created by amr yousry on 1/2/18.


import Foundation


class QuestionBank {
 var list = [Question]()
    init() {
        let item = Question("are you here ?", true)
        list.append(item)
        
        list.append(Question("A slug\'s blood is green.", true))
        
        list.append(Question("Approximately one quarter of human bones are in the feet.", true))
        
        list.append(Question("The total surface area of two human lungs is approximately 70 square metres.", true))
        
        list.append(Question("In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", true))
        
        list.append(Question("In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", false))
        
        list.append(Question("It is illegal to pee in the Ocean in Portugal.", true))
        
        list.append(Question("You can lead a cow down stairs but not up stairs.", false))
        
        list.append(Question("Google was originally called \"Backrub\".", true))
        
        list.append(Question("Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", true))
        
        list.append(Question("The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", false))
        
        list.append(Question("No piece of square dry paper can be folded in half more than 7 times.", false))
        
        list.append(Question("Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", true))
        
    }
    
    
    
}
