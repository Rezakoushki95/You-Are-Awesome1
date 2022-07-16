//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Reza Koushki on 30/06/2022.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var messageLabel: UILabel!
	@IBOutlet weak var imageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()

	}

	@IBAction func messageButtonPressed(_ sender: UIButton) {
		messageLabel.text = "You are awesome"
		imageView.image = UIImage(named: "image0")
		
	}

	@IBAction func anotherButtonPressed(_ sender: UIButton) {
		messageLabel.text = "You Are Great!"
		messageLabel.textColor = .systemRed
		messageLabel.textAlignment = .right
	}
}

