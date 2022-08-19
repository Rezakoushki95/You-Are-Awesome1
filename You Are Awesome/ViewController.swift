//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Reza Koushki on 30/06/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
	
	@IBOutlet weak var messageLabel: UILabel!
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var playSoundSwitch: UISwitch!
	
	var messageNumber = -1
	var imageNumber = -1
	var soundNumber = -1
	let totalNumberOfImages = 10
	let totalNumberOfSounds = 6
	
	var audioPlayer: AVAudioPlayer!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		messageLabel.text = ""
		
	}
	@IBAction func playSoundToggled(_ sender: UISwitch) {
		if !sender.isOn && audioPlayer != nil {
			audioPlayer.stop()
		}
	
	}
	
	func playSound(name: String) {
		if let sound = NSDataAsset(name: name) {
			do {
				try audioPlayer = AVAudioPlayer(data: sound.data)
				audioPlayer.play()
			} catch {
				print("🤬 ERROR: \(error.localizedDescription)- Could not initialize AVAudioPlayer object")
			}
		} else {
			print("🤬 ERROR - Could not read data from file sound0")
		}
	}
	
	func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int {
		var newNumber: Int
		repeat {
			newNumber = Int.random(in: 0...upperBounds-1)
		} while originalNumber == newNumber
		return newNumber
	}
	
	@IBAction func messageButtonPressed(_ sender: UIButton) {
		
		let messages = [
			"You Are Awesome!",
			"You Are Great!",
			"You Are Da Bomb!",
			"You Suck!",
			"You Fine!"
		]

		messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count)
		messageLabel.text = messages[messageNumber]
		
		imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalNumberOfImages)
		imageView.image = UIImage(named: "image\(imageNumber)")

		soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalNumberOfSounds)
		
		if playSoundSwitch.isOn {
			playSound(name: "sound\(soundNumber)")
		}

	}
  }
 
 
