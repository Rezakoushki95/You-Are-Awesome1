//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Reza Koushki on 30/06/2022.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var messageLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		print("👍 viewDidLoad has run!")
		messageLabel.text = "Fabulous? That's you!"
		
	}

	@IBAction func messageButtonPressed(_ sender: UIButton) {
		print("😎 Message button pressed")
		messageLabel.text = "You are awesome"
		messageLabel.textColor = .blue
		messageLabel.textAlignment = .left
		
	}

	@IBAction func anotherButtonPressed(_ sender: UIButton) {
		messageLabel.text = "You Are Great!"
		messageLabel.textColor = .systemRed
		messageLabel.textAlignment = .right
	}
}

