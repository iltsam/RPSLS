//
//  GameController.swift
//  RPSLS
//
//  Created by Sam M on 31/05/2015.
//  Copyright (c) 2015 Sam M. All rights reserved.
//

import UIKit


class GameController: UIViewController {
    var moves = 0;
    @IBOutlet weak var outcomeLabel: UILabel!
    
    @IBOutlet weak var playerMoves: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func choiceController(sender: UIButton) {
        moves += 1
        playerMoves.text = "\(moves)"
        let value = sender.titleLabel?.text
        outcomeLabel.text = value
    }
}
