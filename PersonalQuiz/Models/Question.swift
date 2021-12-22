//
//  Question.swift
//  PersonalQuiz
//
//  Created by ILYA BILARUS on 21.12.2021.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question]{
        [
            Question(title: "Какую пищу предпочитаете", type: .single, answers: [
                Answer(title: "стейк", type: .dog),
                Answer(title: "рыба", type: .cat),
                Answer(title: "моркова", type: .rabbit),
                Answer(title: "салат", type: .turtle)
            ]),
            Question(title: "Что вам нравится больше?", type: .multiple, answers: [
                Answer(title: "плавать", type: .dog),
                Answer(title: "спать", type: .cat),
                Answer(title: "обниматься", type: .rabbit),
                Answer(title: "есть", type: .turtle)
            ]),
            Question(title: "Любите ли вы поездки на машине?", type: .ranged, answers: [
                Answer(title: "ненавижу", type: .cat),
                Answer(title: "нервничаю", type: .rabbit),
                Answer(title: "не замечаю", type: .turtle),
                Answer(title: "обожаю", type: .dog)
            ])
        ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравиться быть с друзьями. Вы откружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Любите гулять сами по себе и цените одиночество."
        case .rabbit:
            return "Вам нравиться жрать морковку."
        case .turtle:
            return "Ваша сила в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}
