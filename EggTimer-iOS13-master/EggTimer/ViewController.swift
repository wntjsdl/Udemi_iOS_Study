//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!

    let eggTimes = ["완전반숙": 300, "반숙": 420, "완숙": 700]

    var totalTime = 0
    var secondsPassed = 0
    var hardness = ""

    var timer = Timer()

    var player: AVAudioPlayer?

    @IBAction func eggSelected(_ sender: UIButton) {

        timer.invalidate()
        secondsPassed = 0

        hardness = sender.currentTitle!

        totalTime = eggTimes[hardness]!

        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }



    @objc func updateCounter() {
        //example functionality
        if secondsPassed < totalTime {
            secondsPassed += 1
            titleLabel.text = "\(hardness)\n\(totalTime - secondsPassed)초 남았습니다😀"

            let percentageProgress = Float(secondsPassed) / Float(totalTime)
//            progressBar.progress = percentageProgress
            progressBar.setProgress(percentageProgress, animated: true)
        } else {
            timer.invalidate()
            secondsPassed = 0
            titleLabel.text = "\(hardness)\n계란이 완성되었습니다🥚"
            playSound("alarm_sound")
        }
    }

    func playSound(_ soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }

}
