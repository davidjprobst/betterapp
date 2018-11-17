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
    
    var sectionNumber = 0
    
    weak var delegate: SectionHeaderDelegate?
    
    @IBOutlet weak var headerTitle: UILabel!
    @IBOutlet weak var editButton: UIButton!
    @IBAction func editButton(_ sender: Any) {
        delegate?.onEditButton(sectionNumber: sectionNumber)
    }
    
    func hideEditButton() {
        editButton.isHidden = true
    }
    
}

protocol SectionHeaderDelegate: class {
    func onEditButton(sectionNumber: Int)
}
