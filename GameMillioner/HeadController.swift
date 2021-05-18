//
//  ViewController.swift
//  GameMillioner
//
//  Created by Евгений Янушкевич on 16.05.2021.
//

import UIKit

class HeadController: UIViewController {

    @IBAction func gameButton(_ sender: Any) {
        let gameVC = GameViewController()
        let record = Game.shared.gameSession
        gameVC.shared = record
    }
    
    
    @IBAction func resultButton(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

