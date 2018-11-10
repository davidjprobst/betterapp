//
//  GoalCell.swift
//  BetterApp
//
//  Created by David Probst on 10/30/18.
//  Copyright © 2018 David Probst. All rights reserved.
//

import Foundation
import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var goalImage: UIImageView!
    @IBOutlet weak var goalTitle: UILabel!
    
}

struct GoalProperties {
    
    var goalCompletion : BooleanLiteralType
    var goalTitle : String
    
}
