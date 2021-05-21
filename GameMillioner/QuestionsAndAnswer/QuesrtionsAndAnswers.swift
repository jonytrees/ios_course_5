//
//  QuesrtionsAndAnswers.swift
//  GameMillioner
//
//  Created by Евгений Янушкевич on 16.05.2021.
//

import UIKit

struct Question {
    var question: String
    var answer: [Answer]
}

struct Answer {
    var text: String
    var right: Bool
}


var contentData = [
    Question(question: "Какое геометрическое тело получается вращением круга вокруг своего диаметра?", answer: [
        Answer(text: "Цилиндр", right: false),
        Answer(text: "Конус", right: false),
        Answer(text: "Шар", right: true)
    ]),
    
    Question(question: "Что не помогает лучше видеть?", answer: [
        Answer(text: "Кашне", right: true),
        Answer(text: "Бинокль", right: false),
        Answer(text: "Монокль", right: false)
    ]),
    
    Question(question: "Где плебеи противостояли патрициям?", answer: [
        Answer(text: "Ассирия", right: true),
        Answer(text: "Древняя Греция", right: false),
        Answer(text: "Древний Рим", right: false)
    ]),
    
    Question(question: "Что Пифагор называл «царём приправ»?", answer: [
        Answer(text: "Черный перец", right: false),
        Answer(text: "Чеснок", right: true),
        Answer(text: "Шафран", right: false)
    ]),
    
    Question(question: "Как заканчивается фраза из русской народной песни: «Мне не дорог твой подарок, дорога…»?", answer: [
        Answer(text: "Твоя душа", right: false),
        Answer(text: "Твоя любовь", right: true),
        Answer(text: "Твое имя", right: false)
    ]),
    
    Question(question: "От чего, если верить скороговорке, пыль по полю летит?", answer: [
        Answer(text: "От грохота корыт", right: false),
        Answer(text: "От топота копыт", right: true),
        Answer(text: "От шороха ракит", right: false)
    ]),
    
    Question(question: "Какой писатель 11 лет посвятил изучению алхимии?", answer: [
        Answer(text: "Пауло Коэльо", right: true),
        Answer(text: "Патрик Зюскинд", right: false),
        Answer(text: "Харуки Мураками", right: false)
    ]),
    
    Question(question: "В верховьях какой реки расположен Смоленск?", answer: [
        Answer(text: "Волга", right: false),
        Answer(text: "Лена", right: false),
        Answer(text: "Днепр", right: true)
    ]),
    
    Question(question: "Какая нота расположена на третьей линейке нотного стана в скрипичном ключе?", answer: [
        Answer(text: "Ля", right: false),
        Answer(text: "До", right: false),
        Answer(text: "Си", right: true)
    ]),
    
    Question(question: "Как заканчивается русская поговорка: «Раз на раз…»?", answer: [
        Answer(text: "Не выкидывается", right: false),
        Answer(text: "Не просчитывается", right: false),
        Answer(text: "Не приходится", right: true)
    ])
]

