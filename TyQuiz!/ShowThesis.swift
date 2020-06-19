//
//  ShowThesis.swift
//  TyQuiz!
//
//  Created by Tyler Liu on 5/30/18.
//  Copyright © 2018 Hawken. All rights reserved.
//

import Foundation
import UIKit


class ShowThesis: UIViewController {
    
    var Fin: ThesisGeneratorView?
 
    @IBOutlet weak var ShowThe1: UILabel!
    
    //Put Thesis into the label
    //*Problem: The function that I called from ThesisG comes nil, so i will always display nothing. Must fix
    @IBAction func Show(_ sender: Any){
        let Theses = Fin?.The()
        ShowThe1.text = Theses
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
