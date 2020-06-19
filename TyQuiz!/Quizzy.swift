//
//  Quizzy.swift
//  TyQuiz!
//
//  Created by Tyler Liu on 5/16/18.
//  Copyright © 2018 Hawken. All rights reserved.
//

import Foundation
import UIKit

//Structure of the Question
struct Question {
    
    var Question: String!
    var Answers: [String]!
    var Answer: Int!
    
}

class Quizzy: UIViewController {
    
    @IBOutlet var QuestionLabel: UILabel!
    
    @IBOutlet var quizSelection: [UIButton]!
    
    
   
    var Questions = [Question]() //Fix

    var QNumber = Int() //Our question number
    
    var ANumber = Int() //Our Correct Question anser (Might be apart of the hard code)*Will need to fix
    
//    func QuestionList() -> [Question] {//Fix
//        return [
//                Question(Question: "This is a Test, What is my name?", Answers: ["Tyler","Sophia","Ralph","Lebron"], Answer: 0 ),
 //               Question(Question: "hello", Answers: ["de","des","dest","ddesty"], Answer: 2),
   //         ]
  //  }
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        Questions = [Question(Question: "This is a Test, What is my name?", Answers: ["Tyler","Sophia","Ralph","Lebron"], Answer: 0 ), Question(Question: "hello", Answers: ["de","des","dest","ddesty"], Answer: 2)]
        
        //Figure out how to take the answers from previous question and add it to the correct answer, thus making a new question.
        //Add more to list
        Hide()
        
        quizQuestions()
    }
    
    
   
    @IBOutlet var DisplayA: UILabel!
    
  
    
    var correctAnswer = String()
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Figure out if i can change order to questions or should i change it to just inputing wrong answers as well, will save more time this way.
    func quizQuestions(){
        
        // set up question
        if Questions.count > 0 {
            //QNumber =  Int(arc4random_uniform(10)) % Questions.count
            QNumber = 0
            QuestionLabel.text = Questions[QNumber].Question
            
            //Applying Answer to integer number, essentially saves the correct answer.
            ANumber = Questions[QNumber].Answer
            
            //set up buttons for selection
            for i in 0...quizSelection.count - 1 {
               //Put Answers
                quizSelection[i].setTitle(Questions[QNumber].Answers[i], for: UIControlState.normal)
                
            }
            //No more repitition
            Questions.remove(at: QNumber)
            
        }else{
         
            //Can do oter things go explore/plan out (9:40)
            NSLog("Done")
            
            }
            
            
    }
   
    func Hide(){
        DisplayA.isHidden = true
       
        
        
    }
    func Unhide(){
        DisplayA.isHidden = false
        
    }
        
    //Will fix this. Do not want hardc ode. Will make something that takes in user imput. Might need list or array. Will need to create fuction that adds more cases (more questions), randomize questions, show score at end. (end button, add button)
          

    //Hide and unhide labels when clicked on
    //Found this code in a video
    

    @IBAction func Button1(_ sender: Any) {
        
        if ANumber == 0 {
            DisplayA.text = "You are correct"
            //Delay response by two secods before switching questions
            //Got this code from StackOverFlow: How to delay Functions?
            //DispatchQueue.main.asyncAfter(deadline: .now() + 2) {            self.quizQuestions()
           // }
            quizQuestions()
        }else{
           
            NSLog("Wrong")
        
            
        }
        
    }
    
    @IBAction func Button2(_ sender: Any) {
        if ANumber == 1 {
            DisplayA.text = "You are correct!"
           //DispatchQueue.main.asyncAfter(deadline: .now() + 2) {            self.quizQuestions()
            //}
            quizQuestions()
        }else{
            
            DisplayA.text = "You are wrong!"
            
            
        }
        
    }
    
    @IBAction func Button3(_ sender: Any) {
        
        if ANumber == 2 {
            DisplayA.text = "You are correct"
            
           // DispatchQueue.main.asyncAfter(deadline: .now() + 2) {            self.quizQuestions()
            //}

        quizQuestions()
            
        }else{
            
            DisplayA.text = "You are wrong!"
            
            
        }
        
    }
    
    @IBAction func Button4(_ sender: Any) {
        
        if ANumber == 3 {
            DisplayA.text = "You are correct"
          //  DispatchQueue.main.asyncAfter(deadline: .now() + 2) {            self.quizQuestions()
           // }
            quizQuestions()
        }else{
            
           DisplayA.text = "You are wrong!"
            
            
        }
        
    }
   
    
}
    





