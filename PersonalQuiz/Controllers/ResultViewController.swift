//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by ILYA BILARUS on 21.12.2021.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var resultTextLabel: UILabel!
    
    var answersChoosen: [Answer] = []
    var resultAnimal: AnimalType?
    //передать массив с ответами
    //определить часто встречающийчя тип живтного
    //отобразить результат
    //кнопку назад убрать
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        resultAnimal = calculateResult(answersChoosen)
        
        guard let resultAnimal = resultAnimal else { return }
        titleLabel.text = "Вы - \(resultAnimal.rawValue)!"
        resultTextLabel.text = resultAnimal.definition
    }
    


}


extension ResultViewController {
    
    private func calculateResult(_ answers: [Answer]) -> AnimalType? {
        
        var resultChoose: [AnimalType : Int] = [.dog : 0, .turtle : 0, .rabbit : 0, .cat : 0]
        
        for answer in answersChoosen {
            resultChoose.updateValue(resultChoose[answer.type]!+1, forKey: answer.type)
        }
        let result = resultChoose.max { a, b in a.value < b.value}
        return result?.key
    }
    
}
