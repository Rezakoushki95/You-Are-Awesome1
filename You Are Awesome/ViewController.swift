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
	
	var messageNumber = -1
	var imageNumber = -1
	let totalNumberOfImages = 9
	
	var audioPlayer: AVAudioPlayer!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		messageLabel.text = ""
		
	}
	
	@IBAction func messageButtonPressed(_ sender: UIButton) {
		
		let messages = [
			"You Are Awesome!",
			"You Are Great!",
			"You Are Da Bomb!",
			"You Suck!",
			"You Fine!"
		]
		
		var newMessageNumber: Int
		

		repeat {
			newMessageNumber = Int.random(in: 0...messages.count-1)

		} while messageNumber == newMessageNumber
		messageNumber = newMessageNumber
		messageLabel.text = messages[messageNumber]
		
		var newImageNumber: Int
		repeat {
			newImageNumber = Int.random(in: 0...totalNumberOfImages)
		} while imageNumber == newImageNumber
		
		imageNumber = newMessageNumber
		imageView.image = UIImage(named: "image\(imageNumber)")
		
		if let sound = NSDataAsset(name: "sound\(Int.random(in: 0...5))") {
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
  }
 
 
