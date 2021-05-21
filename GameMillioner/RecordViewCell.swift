//
//  RecordViewCell.swift
//  GameMillioner
//
//  Created by Евгений Янушкевич on 17.05.2021.
//

import UIKit

class RecordViewCell: UITableViewCell {

    
    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    func setRecord(data: Date, score: Int) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.YYYY HH:mm:ss"
        dataLabel.text = formatter.string(from: data)
        scoreLabel.text = String(score)
    }
}
