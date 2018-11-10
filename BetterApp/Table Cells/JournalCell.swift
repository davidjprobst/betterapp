//
//  JournalCell.swift
//  BetterApp
//
//  Created by David Probst on 11/1/18.
//  Copyright © 2018 David Probst. All rights reserved.
//

import Foundation
import UIKit

class JournalCell: UITableViewCell {
    
    @IBOutlet weak var journalTitle: UILabel!
    @IBOutlet weak var journalBody: UILabel!
    
}

struct JournalProperties {
    
    var journalCompletion : BooleanLiteralType
    var journalTitle : String
    var journalBody : String
    
}
