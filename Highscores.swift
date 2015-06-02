//
//  Highscores.swift
//  RPSLS
//
//  Created by Sam M on 1/06/2015.
//  Copyright (c) 2015 Sam M. All rights reserved.
//

import Foundation
import CoreData

class Highscores: NSManagedObject {

    @NSManaged var player_name: String
    @NSManaged var player_moves: NSNumber

}
