//
//  ViewController.swift
//  Acty
//
//  Created by Olga Volkova on 2017-08-29.
//  Copyright © 2017 Olga Volkova OC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emotions = ["happy", "sad", "excited", "concerned", "surprised", "trusting", "worried", "in anticipation", "disappointed", "surprised", "frustrated"]
    
    let activities = ["swimming with dolphins", "planting trees", "sailing in the ocean", "reading a book", "riding a horse", "watching a movie", "riding a bike", "cleaning your house", "dining with friends", "running from a lion", "crawling in a desert"]
    
    @IBOutlet weak var actingTask: UILabel!
    // We will write all our code here

    @IBAction func generateActingTask() {
        
        //generate random emotion
        let randomEmotionIndex = Int(arc4random_uniform(UInt32(emotions.count)))
        let randomEmotion = emotions[randomEmotionIndex]
        
        //generate random activity
        let randomActivityIndex = Int(arc4random_uniform(UInt32(activities.count)))
        let randomActivity = activities[randomActivityIndex]
        
        let newActingTask = "You are " + randomEmotion + " " + randomActivity + "!"
        
        actingTask.text = newActingTask
    }
}

