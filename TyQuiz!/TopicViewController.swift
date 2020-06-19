//
//  TopicViewController.swift
//  TyQuiz!
//
//  Created by Tyler Liu on 5/15/18.
//  Copyright © 2018 Hawken. All rights reserved.
//

import UIKit

class TopicViewController: UITableViewController {
    
    var topics = TopicStore.generateTopic()
}
//Unwind segue actions
extension TopicViewController {
    //Returns user back to initial tableview
    @IBAction func cancelTopicPage(_ segue: UIStoryboardSegue) {
    }
    
    //Allows user to add new topic by clcking "add"
    @IBAction func addTopic(_ segue: UIStoryboardSegue) {
        
        guard let DetailViewController = segue.source as? DetailViewController,
            let topic = DetailViewController.topic else {
                return
        }
        
        // add the new topic to the array
        topics.append(topic)
        
        // update the tableView
        let indexPath = IndexPath(row: topics.count - 1, section: 0)
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
}

extension TopicViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuizCell", for: indexPath)
        
        let topic = topics[indexPath.row]
        cell.textLabel?.text = topic.name
        return cell
    }
}


