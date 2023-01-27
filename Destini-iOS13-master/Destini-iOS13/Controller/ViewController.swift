//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    var storyBrain = StoryBrain()
    let destination = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        storyLabel.text = storyBrain.storyArr[0].title
        choice1Button.setTitle(storyBrain.storyArr[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.storyArr[0].choice2, for: .normal)
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        let currentTitle = sender.currentTitle!
        let nextStory = storyBrain.nextStory(currentTitle)
        updateUI(story: nextStory)
    }

    func updateUI(story: Story) {
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }
}

