//
//  DetailViewController.swift
//  TyQuiz!
//
//  Created by Tyler Liu on 5/15/18.
//  Copyright © 2018 Hawken. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {
    
    var topic: Topic?
    
    @IBOutlet weak var topicText: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        if segue.identifier == "addTopic",
            let topicName = topicText.text {
            topic = Topic(name: topicName)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topicText.resignFirstResponder()
    }
    
    
}
//Found this code online; Tap anywhere along the lines of the tableviewcell and it will open a keyboard.
extension DetailViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            topicText.becomeFirstResponder()
        }
    }
}

