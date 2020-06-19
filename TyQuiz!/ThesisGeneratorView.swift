//
//  ThesisGeneratorView.swift
//  TyQuiz!
//
//  Created by Tyler Liu on 5/29/18.
//  Copyright © 2018 Hawken. All rights reserved.
//

import Foundation
import UIKit

class ThesisGeneratorView: UIViewController {
    //When click on generate, present segue modally, Paste complete sentence on the view using the Label trick in GPA Calc
    //Create loading screen, Draw logo, add Tab pics tmr
    
 
    
    @IBOutlet weak var Arg: UITextField!
    @IBOutlet weak var EV1: UITextField!
    @IBOutlet weak var EV2: UITextField!
    @IBOutlet weak var EV3: UITextField!
    @IBOutlet weak var Cou: UITextField!
    
  //  var Thesis = String("Although " + \(Cou.text!) + "," + " A closer examination shows that " + \(Arg.text!) + " becuase " + \(EV1.text!) + ", " + \(EV2.text!) + ", " + \(EV3.text!) + ".")
 //Get the user imput and combine it together
    func The() -> String {
        
        let arg = Arg.text!
        let ev1 = EV1.text!
        let ev2 = EV2.text!
        let ev3 = EV3.text!
        let cou = Cou.text!
        
        let Str1 = "Although"
    
        let Str2 = "A closer examination shows that "
        let Str3 =  " because"
        let Str4 = "."
        
        let Word = Str1 + cou + Str2 + arg + Str3 + ev1 + ev2 + ev3 + Str4
        
       return Word
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        The()
        Arg.resignFirstResponder()
        EV1.resignFirstResponder()
        EV2.resignFirstResponder()
        EV3.resignFirstResponder()
        Cou.resignFirstResponder()
            
        }
   
        
    
    
    
    @IBAction func cancelToPlayersViewController(_ segue: UIStoryboardSegue) {
    }
}

