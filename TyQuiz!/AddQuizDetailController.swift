//
//  AddQuizDetailController.swift
//  TyQuiz!
//
//  Created by Tyler Liu on 5/16/18.
//  Copyright © 2018 Hawken. All rights reserved.
//

import Foundation
import UIKit

class AddQuizDetailController: UITableViewController {
    
    var question: Question!
    
    //Change back to just :Question
    @IBOutlet weak var QuestionText: UITextField!
    
    @IBOutlet weak var FactText: UITextField!
    
    @IBOutlet weak var WrongText1: UITextField!
    
    @IBOutlet weak var WrongText2: UITextField!
    
    @IBOutlet weak var WrongText3: UITextField!
    //Create question based on the structure created in Quizzy
    //Problem* Does not correctly append to the new list of questions
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        if segue.identifier == "AddFacts",
            let quizQuestionName = QuestionText.text,
            let factQuestionName = FactText.text,
            let Wrong1 = WrongText1.text,
            let Wrong2 = WrongText2.text,
            let Wrong3 = WrongText3.text {
            question = Question(Question: String(quizQuestionName), Answers: [String(factQuestionName), String(Wrong1), String(Wrong2), String(Wrong3)], Answer: 0)
        }//Answer is always 0, need to somhow randomize this
    }
    override func viewDidLoad(){
        
        super.viewDidLoad()
        FactText.resignFirstResponder()
        WrongText1.resignFirstResponder()
        WrongText2.resignFirstResponder()
        WrongText3.resignFirstResponder()
        QuestionText.resignFirstResponder()
    }
   //Allow user to tap anywhere within the text box to activate keyboard
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            QuestionText.becomeFirstResponder()
            FactText.becomeFirstResponder()
            WrongText1.becomeFirstResponder()
            WrongText2.becomeFirstResponder()
            WrongText3.becomeFirstResponder()
            
        }
    }
    
    
}
