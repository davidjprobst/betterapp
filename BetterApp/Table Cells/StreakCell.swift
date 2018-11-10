//
//  StreakCell.swift
//  BetterApp
//
//  Created by David Probst on 10/28/18.
//  Copyright © 2018 David Probst. All rights reserved.
//

import Foundation
import UIKit

class StreakCell: UITableViewCell {
    
    @IBOutlet weak var streakImage: UIImageView!
    @IBOutlet weak var streakTitle: UILabel!
    @IBOutlet weak var streakSubtitle: UILabel!
    
}

struct StreakProperties {
    
    var streakCompletion : BooleanLiteralType
    var streakTitle : String
    var streakSubtitle : String
    
}
