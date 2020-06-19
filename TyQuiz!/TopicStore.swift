//
//  TopicStore.swift
//  TyQuiz!
//
//  Created by Tyler Liu on 5/15/18.
//  Copyright © 2018 Hawken. All rights reserved.
//

import Foundation

final class TopicStore{
    
    static func generateTopic() -> [Topic] {
        return [
            Topic(name: "Test")
        ]
    }
   
//    var GT = generateTopic()
  //  let itemArchiveURL: URL = {
    //    let documentsDirectories =
      //      FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
  //      let documentDirectory = documentsDirectories.first!
//        return documentDirectory.appendingPathComponent("topics.archive")
    //}()
    
    //func saveChanges() -> Bool {
      //  print("Saving items to: \(itemArchiveURL.path)")
        //return NSKeyedArchiver.archiveRootObject(GT, toFile: itemArchiveURL.path)
   // }
    
    
    
}
