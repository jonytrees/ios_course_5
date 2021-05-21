//
//  RecordViewController.swift
//  GameMillioner
//
//  Created by Евгений Янушкевич on 17.05.2021.
//

import UIKit

class RecordViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    var session = Game.shared.gameSession
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableview.delegate = self
        self.tableview.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableview.dequeueReusableCell(withIdentifier: "cell") as! RecordViewCell
        let count = session.count
        let textData = session[count - 1].data
        let textScore = session[count - 1].score
        
        cell.setRecord(data: textData, score: textScore)

        return cell
    }

}
