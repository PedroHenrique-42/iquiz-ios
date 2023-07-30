//
//  PerformanceViewController.swift
//  iQuiz
//
//  Created by Pedro Henrique on 30/07/23.
//

import UIKit

class PerformanceViewController: UIViewController {
	
	var score: Int?
	
	@IBOutlet weak var resultLabel: UILabel!
	
	@IBOutlet weak var percentageLabel: UILabel!
	
	@IBOutlet weak var restartQuizButton: UIButton!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configureLayout()
		configurePerformance()
	}
	
	func configureLayout() {
		navigationItem.hidesBackButton = true
		restartQuizButton.layer.cornerRadius = 12.0
	}
	
	func configurePerformance() {
		guard let score = score else { return }
		let percentage = (score * 100) / questions.count
		
		resultLabel.text = "Você acertou \(score) de \(questions.count) questões!"
		percentageLabel.text = "Percentual final \(percentage)%"
	}
}
