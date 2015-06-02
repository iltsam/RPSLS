//
//  AddToHighscoresClass.swift
//  RPSLS
//
//  Created by Sam M on 1/06/2015.
//  Copyright (c) 2015 Sam M. All rights reserved.
//

import UIKit
import CoreData

class AddToHighscoresClass: UIViewController {
    var moves: Int!
    // Retrieve the managedObjectCentext from AppDelegate
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    
    
    

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var movesLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        movesLabel.text = "\(moves)"
        // Do any additional setup after loading the view.
        let context = appDelegate.managedObjectContext!
        println(context)
        
        // Create a new fetch request for Highscores
        let fetchRequest = NSFetchRequest(entityName: "Highscores")
        // Execute the fetch request
        if let fetchResults = context.executeFetchRequest(fetchRequest, error: nil) as? [Highscores] {
            println(fetchResults)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func add () {
        let context = appDelegate.managedObjectContext!
        println(context)
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("Highscores", inManagedObjectContext: context) as! Highscores
        newItem.player_name = nameLabel.text
        newItem.player_moves = moves
        
        appDelegate.saveContext()
        // Create a new fetch request for Highscores
        let fetchRequest = NSFetchRequest(entityName: "Highscores")
        // Execute the fetch request
        if let fetchResults = context.executeFetchRequest(fetchRequest, error: nil) as? [Highscores] {
            println(fetchResults)
        }
    }
    

    @IBAction func addButtonClicked(sender: AnyObject) {
        // Adds name and moves to highscore
        add()
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
