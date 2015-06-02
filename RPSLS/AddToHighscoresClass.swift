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
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext

    @IBOutlet weak var movesLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        movesLabel.text = "\(moves)"
        // Do any additional setup after loading the view.
        println(managedObjectContext)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func add () {
        let newItem = NSEntityDescription.insertNewObjectForEntityForName("Highscores", inManagedObjectContext: self.managedObjectContext!) as! Highscores
        newItem.player_name = "Josh"
        newItem.player_moves = moves
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
