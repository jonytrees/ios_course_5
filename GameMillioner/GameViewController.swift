//
//  GameViewController.swift
//  GameMillioner
//
//  Created by Евгений Янушкевич on 16.05.2021.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var firstAnswer: UIButton!
    @IBOutlet weak var secondAnswer: UIButton!
    @IBOutlet weak var thirtAnswer: UIButton!
    

    @IBOutlet weak var promptButton: UIButton!
    @IBOutlet weak var segueBack: UINavigationItem!
    
    var count = 0
    var score = 0
    var promptBool = true
    var shared: [GameSession] = []
    var record = GameSession(score: 0, data: Date())
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setContant()
        setDesignButton()
        totalLabel.isHidden = true
        firstAnswer.tag = 0
        secondAnswer.tag = 1
        thirtAnswer.tag = 2
        firstAnswer.addTarget(self, action: #selector(checkAnswer(sender:)), for: .touchUpInside)
        secondAnswer.addTarget(self, action: #selector(checkAnswer(sender:)), for: .touchUpInside)
        thirtAnswer.addTarget(self, action: #selector(checkAnswer(sender:)), for: .touchUpInside)
        if promptBool {
            promptButton.addTarget(self, action: #selector(funcPrompt(sender:)), for: .touchUpInside)
            print("true: \(promptBool)")
        }
        if promptBool == false {
            setContant()
            print("false: \(promptBool)")
        }
        
    }
    
    // MARK: - Устанавливает контент на контроллере
    func setContant() {
        if count < 10 {
            numberLabel.text = "Вопрос №: \(count + 1)"
            questionLabel.text = contentData[count].question
            firstAnswer.setTitle(contentData[count].answer[0].text, for: .normal)
            secondAnswer.setTitle(contentData[count].answer[1].text, for: .normal)
            thirtAnswer.setTitle(contentData[count].answer[2].text, for: .normal)
            
        } else {
            funcFinal()
        }
    }
    
    // MARK: - Устанавливает цвет и кликабельность кнопок
    func setDesignButton() {
        firstAnswer.setTitleColor(.blue, for: .normal)
        firstAnswer.isEnabled = true
        secondAnswer.setTitleColor(.blue, for: .normal)
        secondAnswer.isEnabled = true
        thirtAnswer.setTitleColor(.blue, for: .normal)
        thirtAnswer.isEnabled = true
    }
    
    // MARK: - Проверка ответа игрока
    @objc func checkAnswer(sender: UIButton) {
        totalLabel.isHidden = false
        if contentData[count].answer[sender.tag].right == false {
            totalLabel.text = "Ответ неверен!"
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                self.funcRestart()
            })
        } else {
            totalLabel.text = "Ответ верный!"
            self.count += 1
            self.score += 1
            let record = GameSession(score: self.score, data: Date())
            Game.shared.addRecord(record)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
                self.viewDidLoad()
            })
        }
    }
    
    // MARK: - Возврат на главный контроллер
    func funcRestart() {
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Контент финального контроллера
    func funcFinal(){
        questionLabel.text = "ВЫ ВЫИГРАЛИ!!!"
        questionLabel.textAlignment = .center
        firstAnswer.isHidden = true
        secondAnswer.isHidden = true
        thirtAnswer.isHidden = true
        totalLabel.isHidden = true
    }
    
    // MARK: - Убирает один неверный ответ
    @objc func funcPrompt(sender: UIButton) {
        promptBool = false
        promptButton.setTitleColor(.gray, for: .normal)
        promptButton.isEnabled = false
        promptButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 10)
        
        if contentData[count].answer[0].right == false {
            firstAnswer.setTitleColor(.gray, for: .normal)
            firstAnswer.isEnabled = false
        } else if contentData[count].answer[1].right == false {
            secondAnswer.setTitleColor(.gray, for: .normal)
            secondAnswer.isEnabled = false
        } else if contentData[count].answer[2].right == false {
            thirtAnswer.setTitleColor(.gray, for: .normal)
            thirtAnswer.isEnabled = false
        }
        
    }
}
