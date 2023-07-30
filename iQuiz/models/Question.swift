//
//  Question.swift
//  iQuiz
//
//  Created by Pedro Henrique on 30/07/23.
//

import Foundation

struct Question {
	var title: String
	var answers: [String]
	var rightAnswer: Int
}

let questions: [Question] = [
	Question(
		title: "Qual feitiço para desarmar o seu oponente em Harry Potter?",
		answers: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"],
		rightAnswer: 2
	),
	Question(
		title: "Quando foi lançado o filme Avatar 2?",
		answers: ["2014", "2022", "2023"],
		rightAnswer: 1
	),
	Question(
		title: "Quando foi lançado o filme Vingadores Ultimato?",
		answers: ["2019", "2018", "2017"],
		rightAnswer: 0
	)
]
