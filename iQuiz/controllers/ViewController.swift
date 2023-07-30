//
//  ViewController.swift
//  iQuiz
//
//  Created by Pedro Henrique on 29/07/23.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var initQuizButton: UIButton!
	
	@IBAction func buttonClicked(_ sender: Any) {
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configureLayout()
	}
	
	func configureLayout() {
		navigationItem.hidesBackButton = true
		initQuizButton.layer.cornerRadius = 12.0
	}
	
}

