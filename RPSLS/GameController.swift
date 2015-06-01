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
    var opponentChoice = "";
    weak var previousMove: UIButton!
    @IBOutlet weak var outcomeLabel: UILabel!
    
    @IBOutlet weak var playerMoves: UILabel!
    
    @IBOutlet weak var scissorsOpponent: UIButton!
    @IBOutlet weak var lizardOpponent: UIButton!
    
    @IBOutlet weak var spockOpponent: UIButton!
    
    @IBOutlet weak var rockOpponent: UIButton!
    
    @IBOutlet weak var paperOpponent: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func choiceController(sender: UIButton) {
        moves += 1
        opponentChoiceFunc()
        playerMoves.text = "\(moves)"
        sender.backgroundColor = UIColor.blueColor()
        sender.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        if(sender.titleLabel!.text! == "Rock"){
            println("in rock if")
            if (opponentChoice == "scissors" || opponentChoice == "lizard") {
                outcomeLabel.text = "You Win!"
            } else if (opponentChoice == "paper" || opponentChoice == "spock") {
                outcomeLabel.text = "You Lose!"
            } else {
                outcomeLabel.text = "Play again!"
            }
            println("this is rock statement")
        }
        
    }
    
    func opponentChoiceFunc () {
        
        let randOpponent = arc4random_uniform(5) + 1
        if (randOpponent == 1) {
            opponentChoice = "rock"
        } else if (randOpponent == 2) {
            opponentChoice = "paper"
        } else if (randOpponent == 3) {
            opponentChoice = "scissors"
        } else if (randOpponent == 4) {
            opponentChoice = "lizard"
        } else if (randOpponent == 5) {
            opponentChoice = "spock"
        }
        outcomeLabel.text = opponentChoice
        
    }
}
