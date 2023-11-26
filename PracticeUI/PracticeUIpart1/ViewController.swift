//
//  ViewController.swift
//  PracticeUIpart1
//
//  Created by handaewon17 on 11/24/23.
//

import UIKit

struct Family {
    let myName: String
    let bestFriendName: String
    let nextFriendName: String
    let myBrother: String
}

class ViewController: UIViewController {
    
    let friendNames: [String] = ["Haaland", "Alvarez", "Foden", "Gvardiol"]
    let koreanNames: [String: String] = ["Halland": "홀란드", "Alvarez": "알바레스", "Foden": "포든", "Gvardiol": "그바르디올"]
    var count: Int = 0
    let friend = Family(myName: "Haaland09",
                        bestFriendName: "Alvarez19",
                        nextFriendName: "Foden47", myBrother: "Gvardiol24")
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bestFriendNameLabel: UILabel!
    @IBOutlet weak var nextFriendNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        //        = friendNames[0]
        //        = friendNames[1]
        //        = friendNames[2]
        
        nameLabel.text = friend.myName
        bestFriendNameLabel.text = friend.bestFriendName
        nextFriendNameLabel.text = friend.nextFriendName
        //        friend.myBrother
    }
}
