//
//  UIView+Extensions.swift
//  BetterApp
//
//  Created by David Probst on 11/10/18.
//  Copyright © 2018 David Probst. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    class func fromNib<T : UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
        }
    }
