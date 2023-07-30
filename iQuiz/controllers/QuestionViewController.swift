//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Pedro Henrique on 30/07/23.
//

import UIKit

class QuestionViewController: UIViewController {
	
	var score: Int = 0
	var questionNumber: Int = 0
	
	@IBOutlet weak var questionTitleLabel: UILabel!
	@IBOutlet var answerButtons: [UIButton]!
	
	@IBAction func buttonPressedAnswer(_ button: UIButton) {
		print(button.tag)
		let userGotRightAnswer = questions[questionNumber].rightAnswer == button.tag
		
		if userGotRightAnswer {
			score += 1
			button.backgroundColor = UIColor.greenBackgroundColor
		} else {
			button.backgroundColor = UIColor.redBackgroundColor
		}
		
		if questionNumber < questions.count - 1 {
			questionNumber += 1
			Timer.scheduledTimer(
				timeInterval: 0.5,
				target: self,
				selector: #selector(configureQuestion),
				userInfo: nil,
				repeats: false
			)
		} else {
			goToPerformanceScreen()
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		configureLayout()
		configureQuestion()
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let performanceViewController = segue.destination as? PerformanceViewController else { return }
		
		performanceViewController.score = score
	}
	
	func configureLayout() {
		navigationItem.hidesBackButton = true
		questionTitleLabel.numberOfLines = 0
		questionTitleLabel.textAlignment = .center
		
		for button in answerButtons {
			button.layer.cornerRadius = 12.0
		}
	}
	
	@objc func configureQuestion() {
		questionTitleLabel.text = questions[questionNumber].title
		
		for button in answerButtons {
			let buttonTitle = questions[questionNumber].answers[button.tag]
			button.setTitle(buttonTitle, for: .normal)
			button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
		}
	}
	
	func goToPerformanceScreen() {
		performSegue(
			withIdentifier: "goToPerformanceScreen",
			sender: nil
		)
	}
	
	
}
