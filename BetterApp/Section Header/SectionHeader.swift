//
//  SectionHeader.swift
//  BetterApp
//
//  Created by David Probst on 11/10/18.
//  Copyright © 2018 David Probst. All rights reserved.
//

import Foundation
import UIKit

class SectionHeader: UIView {
    
    var delegate: SectionHeaderDelegate?
    
    @IBOutlet weak var headerTitle: UILabel!
    @IBAction func editButton(_ sender: Any) {
        delegate?.onEditButton()
    }
    
}

protocol SectionHeaderDelegate {
    func onEditButton()
}
