//
//  PlayQuiz.swift
//  TyQuiz!
//
//  Created by Tyler Liu on 5/16/18.
//  Copyright © 2018 Hawken. All rights reserved.
//

import UIKit
import Foundation

class PlayQuizDetailController: UIViewController {
    
    var quiz: Quizzy! //Fix
    
    @IBOutlet weak var startButton: UIButton!
  
    @IBOutlet weak var addFacts: UIButton!
    
   
    
    @IBAction func cancelToPlayQuizViewController(_ segue: UIStoryboardSegue) {
    }
    
    @IBAction func addFacts(_ segue: UIStoryboardSegue) {
       
        guard let AddQuizDetailController = segue.source as? AddQuizDetailController,
            let question = AddQuizDetailController.question else {
                return
        }
        
        // add the new questions with answers to the array
        quiz.Questions.append(question)
        
        
        
    }
}
