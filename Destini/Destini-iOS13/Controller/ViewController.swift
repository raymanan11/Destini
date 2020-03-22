//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLine: UILabel!
    
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        // taking the choice user made and checking from current choices from current story struct and getting correspronding indexes
        // then getting the next index of story
        let nextStory = storyBrain.getAnswer(sender.currentTitle!)
        // updating the next story line number
        storyBrain.updateStoryNumber(nextStory)
        
        updateUI()
    }
    func updateUI() {
        storyLine.text = storyBrain.getTitle()
        choice1.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2.setTitle(storyBrain.getChoice2(), for: .normal)
    }

}

