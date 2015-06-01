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
    
    @IBOutlet weak var rockPlayer: UIButton!
    
    @IBOutlet weak var paperPlayer: UIButton!
    
    @IBOutlet weak var scissorsPlayer: UIButton!
    
    @IBOutlet weak var lizardPlayer: UIButton!
    
    @IBOutlet weak var spockPlayer: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var addToHighscoresButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetButtons()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func choiceController(sender: UIButton) {
        resetButtons()
        moves += 1
        opponentChoiceFunc()
        playerMoves.text = "\(moves)"
        sender.backgroundColor = UIColor.blueColor()
        sender.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        if(sender.titleLabel!.text! == "Rock"){
            println("in rock if")
            if (opponentChoice == "scissors" || opponentChoice == "lizard") {
                outcomeLabel.text = "You Win!"
                playerWins()
            } else if (opponentChoice == "paper" || opponentChoice == "spock") {
                outcomeLabel.text = "You Lose!"
            } else {
                outcomeLabel.text = "Play again!"
            }
            
            println("this is rock statement")
        } else if(sender.titleLabel!.text! == "Paper") {
            if (opponentChoice == "rock" || opponentChoice == "spock") {
                outcomeLabel.text = "You Win!"
            } else if (opponentChoice == "scissors" || opponentChoice == "lizard") {
                outcomeLabel.text = "You Lose!"
            } else {
                outcomeLabel.text = "Play again!"
            }
            
            println("this is paper statement")
        } else if(sender.titleLabel!.text! == "Scissors") {
            if (opponentChoice == "paper" || opponentChoice == "lizard") {
                outcomeLabel.text = "You Win!"
            } else if (opponentChoice == "rock" || opponentChoice == "scissors") {
                outcomeLabel.text = "You Lose!"
            } else {
                outcomeLabel.text = "Play again!"
            }
            
            println("this is scissors statement")
        }else if(sender.titleLabel!.text! == "Lizard") {
            if (opponentChoice == "spock" || opponentChoice == "paper") {
                outcomeLabel.text = "You Win!"
            } else if (opponentChoice == "rock" || opponentChoice == "scissors") {
                outcomeLabel.text = "You Lose!"
            } else {
                outcomeLabel.text = "Play again!"
            }
            
            println("this is lizard statement")
        }else if(sender.titleLabel!.text! == "Spock") {
            if (opponentChoice == "scissors" || opponentChoice == "rock") {
                outcomeLabel.text = "You Win!"
            } else if (opponentChoice == "paper" || opponentChoice == "lizard") {
                outcomeLabel.text = "You Lose!"
            } else {
                outcomeLabel.text = "Play again!"
            }
            println("this is lizard statement")
        }
        
    }
    
    func opponentChoiceFunc () {
        
        let randOpponent = arc4random_uniform(5) + 1
        if (randOpponent == 1) {
            opponentChoice = "rock"
            rockOpponent.backgroundColor = UIColor.blueColor()
            rockOpponent.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        } else if (randOpponent == 2) {
            opponentChoice = "paper"
            paperOpponent.backgroundColor = UIColor.blueColor()
            paperOpponent.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        } else if (randOpponent == 3) {
            opponentChoice = "scissors"
            scissorsOpponent.backgroundColor = UIColor.blueColor()
            scissorsOpponent.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        } else if (randOpponent == 4) {
            opponentChoice = "lizard"
            lizardOpponent.backgroundColor = UIColor.blueColor()
            lizardOpponent.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        } else if (randOpponent == 5) {
            opponentChoice = "spock"
            spockOpponent.backgroundColor = UIColor.blueColor()
            spockOpponent.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }
        outcomeLabel.text = opponentChoice
        
    }
    
    func resetButtons () {
        rockOpponent.backgroundColor = UIColor.grayColor()
        rockOpponent.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        paperOpponent.backgroundColor = UIColor.grayColor()
        paperOpponent.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        scissorsOpponent.backgroundColor = UIColor.grayColor()
        scissorsOpponent.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        lizardOpponent.backgroundColor = UIColor.grayColor()
        lizardOpponent.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        spockOpponent.backgroundColor = UIColor.grayColor()
        spockOpponent.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        
        rockPlayer.backgroundColor = UIColor.grayColor()
        rockPlayer.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        paperPlayer.backgroundColor = UIColor.grayColor()
        paperPlayer.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        scissorsPlayer.backgroundColor = UIColor.grayColor()
        scissorsPlayer.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        lizardPlayer.backgroundColor = UIColor.grayColor()
        lizardPlayer.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        spockPlayer.backgroundColor = UIColor.grayColor()
        spockPlayer.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
        
    }
    
    func playerWins () {
        addToHighscoresButton.hidden = false
        playAgainButton.hidden = false
        rockPlayer.enabled = false
        paperPlayer.enabled = false
        scissorsPlayer.enabled = false
        lizardPlayer.enabled = false
        spockPlayer.enabled = false
    }
}
