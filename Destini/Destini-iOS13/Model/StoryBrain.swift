//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let storyArray = [
        // 0
        Story(
            title: "After seeing a white walker in person, Cersei Lannister has been asked by Daenarys Targaryan for a truce and offer aid to help her and Jon Snow defeat the enemy to the North, the White Walkers and the Night King",
            choice1: "Take the truce and give aid to help fight the White Walkers and the Night King", choice1Destination: 1,
            choice2: "Refuse the aid and truce and let Daenarys and Jon fight the White Walkers and the Night King themselves", choice2Destination: 2
        ),
        // 1
        Story(
            title: "Jaime Lannister, brother and lover of Daenerys stays by her side to protect her. The soldiers that Cersei provides as well as Daenarys, her three dragons Drogon, Viserion, and Rhaegal, Jon Snow and his army march towards to fight the White Walkers and the Night King. After three long weeks of fighting, exhaustion, and fear, the living win and the war for the Iron Throne continues. ",
            choice1: "Continue the fight for the Iron Throne", choice1Destination: 4,
            choice2: "Use wildfire to kills Daenerys, Jon, as well as everyone in King's Landing in order to keep the Iron Throne", choice2Destination: 5
        ),
        
        // 2
        Story(
            title: "Jaime Lannister, the twin brother and lover of Cersei leaves her side in disgust and decides to fight alongside Daenerys and Jon for the good of the living. After three long weeks of fighting, exhaustion, and fear, the living win and the war for the Iron Throne continues. ",
            choice1: "Jaime Lannister is exhausted and misses his sister and lover and decides to go back to Cersei.", choice1Destination: 4,
            choice2: "Still distraught as to what Cersei did, he pursues a relationship with Brienne of Tarth", choice2Destination: 3
        ),
        
        // 3
        Story(
            title: "Daenerys Targaryan and her three dragons and takes the 7 kingdoms and becomes the Queen of the Realm. Cersei knowing certain defeat, hides from Cersei. Jaime Lannister returns to see Cersei and with a smile on her face, embraces Jaime. As they embrace, Cersei felt a cold sharp feeling in her stomach. A knife. As Cersei falls down with a mortal wound, the person takes off his the face of Jaime Lannister and underneath is Arya Stark, seeking revenge.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        
        // 4
        Story(
            title: "The fight for the Iron Throne resumes. Daenerys and her three dragons as well as Jon Snow launch an attack on King's Landing. It proves too much for Cersei and Jaime and when defeat is inevitable, they decide to end their lives together. Jaime ends Cersei's life first then his own thus fulfilling Cersei's prophecy.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        ),
        
        // 5
        Story(
            title: "Jaime finds out what Cersei plans to do and is distraught. Seeing no other choice, he kills his sister and lover for the good of the realm. Jaimer holds Cersei's cold body in his hands and cries. Daenerys defeats the Lannister army with use of her dragons as well as Jon Snow and his army and becomes Queen and Ruler of the Seven Kingdoms.",
            choice1: "The", choice1Destination: 0,
            choice2: "End", choice2Destination: 0
        )
    ]
    
    var currentStory = 0
    
    mutating func updateStoryNumber(_ nextStory: Int) {
        currentStory = nextStory;
    }
    
    func getAnswer(_ userAnswer: String) -> Int {
        if userAnswer == storyArray[currentStory].choice1 {
            return storyArray[currentStory].choice1Destination
        }
        else {
            return storyArray[currentStory].choice2Destination
        }
    }
    
    func getTitle() -> String{
        return storyArray[currentStory].title
    }
    
    func getChoice1() -> String {
        return storyArray[currentStory].choice1
    }
    
    func getChoice2() -> String {
        return storyArray[currentStory].choice2
    }
}
