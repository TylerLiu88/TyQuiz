//
//  GPADetailViewController.swift
//  TyQuiz!
//
//  Created by Tyler Liu on 5/24/18.
//  Copyright © 2018 Hawken. All rights reserved.
//

import Foundation
import UIKit

class GPADetailViewController: UIViewController {
    
    //Display the person GPA and a pie chart/ graph displaying Grades from Each class (Color coded)*Possibly
    //Will also add a segue to allow user to add their grades, and the calc will calculate the GPA (Based on Hawken's system) the user will be able to change it by adding new information which will override the previous info.
    
    @IBOutlet weak var GPALabel: UILabel!
    
    @IBOutlet weak var G1: UITextField!
    @IBOutlet weak var G2: UITextField!
    @IBOutlet weak var G3: UITextField!
    @IBOutlet weak var G4: UITextField!
    @IBOutlet weak var G5: UITextField!
    @IBOutlet weak var G6: UITextField!
    @IBOutlet weak var G7: UITextField!
    
   
    //let GPAValue = ["A": 4.0, "A-": 3.7, "B+": 3.3, "B": 3.0, "B-": 2.7, "C+": 2.3, "C": 2.0, "C-": 1.7, "D+": 1.3, "D": 1.0, "D-": 0.7, "F": 0.0]
    
    var TotalGPA = Double()
    //Run each input in switch cases to add up GPA values (Only for non-honors/AP GPA Value)
    func CalculateVal() -> Double {
        let gpa1 =  G1.text!
        let gpa2 =  G2.text!
        let gpa3 =  G3.text!
        let gpa4 =  G4.text!
        let gpa5 =  G5.text!
        let gpa6 =  G6.text!
        let gpa7 =  G7.text!
        
        
        switch gpa1 {
            
        case "A":
            TotalGPA += 4.0
        case "A-":
            TotalGPA += 3.7
        case "B+":
            TotalGPA += 3.3
        case "B":
            TotalGPA += 3.0
        case "B-":
            TotalGPA += 2.7
        case "C+":
            TotalGPA += 2.3
        case "C":
            TotalGPA += 2.0
        case "C-":
            TotalGPA += 1.7
        case "D+":
            TotalGPA += 1.3
        case "D":
            TotalGPA += 1.0
        case "D-":
            TotalGPA += 0.7
        default:
            TotalGPA += 0.0
        }
        
        switch gpa2 {
            
        case "A":
            TotalGPA += 4.0
        case "A-":
            TotalGPA += 3.7
        case "B+":
            TotalGPA += 3.3
        case "B":
            TotalGPA += 3.0
        case "B-":
            TotalGPA += 2.7
        case "C+":
            TotalGPA += 2.3
        case "C":
            TotalGPA += 2.0
        case "C-":
            TotalGPA += 1.7
        case "D+":
            TotalGPA += 1.3
        case "D":
            TotalGPA += 1.0
        case "D-":
            TotalGPA += 0.7
        default:
            TotalGPA += 0.0
        }
        
        switch gpa3 {
            
        case "A":
            TotalGPA += 4.0
        case "A-":
            TotalGPA += 3.7
        case "B+":
            TotalGPA += 3.3
        case "B":
            TotalGPA += 3.0
        case "B-":
            TotalGPA += 2.7
        case "C+":
            TotalGPA += 2.3
        case "C":
            TotalGPA += 2.0
        case "C-":
            TotalGPA += 1.7
        case "D+":
            TotalGPA += 1.3
        case "D":
            TotalGPA += 1.0
        case "D-":
            TotalGPA += 0.7
        default:
            TotalGPA += 0.0
        }
        
        switch gpa4 {
            
        case "A":
            TotalGPA += 4.0
        case "A-":
            TotalGPA += 3.7
        case "B+":
            TotalGPA += 3.3
        case "B":
            TotalGPA += 3.0
        case "B-":
            TotalGPA += 2.7
        case "C+":
            TotalGPA += 2.3
        case "C":
            TotalGPA += 2.0
        case "C-":
            TotalGPA += 1.7
        case "D+":
            TotalGPA += 1.3
        case "D":
            TotalGPA += 1.0
        case "D-":
            TotalGPA += 0.7
        default:
            TotalGPA += 0.0
        }
        
        switch gpa5 {
            
        case "A":
            TotalGPA += 4.0
        case "A-":
            TotalGPA += 3.7
        case "B+":
            TotalGPA += 3.3
        case "B":
            TotalGPA += 3.0
        case "B-":
            TotalGPA += 2.7
        case "C+":
            TotalGPA += 2.3
        case "C":
            TotalGPA += 2.0
        case "C-":
            TotalGPA += 1.7
        case "D+":
            TotalGPA += 1.3
        case "D":
            TotalGPA += 1.0
        case "D-":
            TotalGPA += 0.7
        default:
            TotalGPA += 0.0
        }
        
        switch gpa6 {
            
        case "A":
            TotalGPA += 4.0
        case "A-":
            TotalGPA += 3.7
        case "B+":
            TotalGPA += 3.3
        case "B":
            TotalGPA += 3.0
        case "B-":
            TotalGPA += 2.7
        case "C+":
            TotalGPA += 2.3
        case "C":
            TotalGPA += 2.0
        case "C-":
            TotalGPA += 1.7
        case "D+":
            TotalGPA += 1.3
        case "D":
            TotalGPA += 1.0
        case "D-":
            TotalGPA += 0.7
        default:
            TotalGPA += 0.0
        }
        switch gpa7 {
            
        case "A":
            TotalGPA += 4.0
        case "A-":
            TotalGPA += 3.7
        case "B+":
            TotalGPA += 3.3
        case "B":
            TotalGPA += 3.0
        case "B-":
            TotalGPA += 2.7
        case "C+":
            TotalGPA += 2.3
        case "C":
            TotalGPA += 2.0
        case "C-":
            TotalGPA += 1.7
        case "D+":
            TotalGPA += 1.3
        case "D":
            TotalGPA += 1.0
        case "D-":
            TotalGPA += 0.7
        default:
            TotalGPA += 0.0
        }
        
        let All = TotalGPA/7
        //Round off the GPA to only provide two decimal places
        let y = Double(round(100*All)/100)
        
        return y
        
    }
  //  func updateGPALabel() -> Double {
        
//        var label = Double(GPALabel.text!)!
//        label = CalculateVal()
        
 //       return label
//    }
    //When Clicked will add GPA total to label
    @IBAction func Calc(_ sender: Any) {
        //var label = Double(GPALabel.text!)!
        let Total = String(CalculateVal())
        GPALabel.text = Total
       
        }
        //*Problem: 1st Value is saved in Total, Need to figure out way to reset after each press
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
       // updateGPALabel()
        G1.resignFirstResponder()
        G2.resignFirstResponder()
        G3.resignFirstResponder()
        G4.resignFirstResponder()
        G5.resignFirstResponder()
        G6.resignFirstResponder()
        G7.resignFirstResponder()
    }
    //Func to add TotalGPA to the screen
    
    
    @IBAction func userTappedBackground(sender: AnyObject) {
        view.endEditing(true)
    }

    
    //Create func to store value of each imput or calculate
  
    //Restrict letters
    //Calculate average
    //place the average as GPA
    //Set letters to equal a certaub value *Maybe swich statements
    
   
    
}
