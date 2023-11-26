//
//  MyTableViewController.swift
//  PracticeUIpart1
//
//  Created by handaewon17 on 11/24/23.
//

import UIKit

class MyTableViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    let friendNames: [String] = ["Haaland", "Alvarez", "Foden", "Gvardiol"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.backgroundColor = .blue
        myTableView.delegate = self
        myTableView.dataSource = self
    }
}

extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
        myTableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
        cell.textLabel?.text = friendNames[indexPath.row]
        
        return cell
    }
    
}
