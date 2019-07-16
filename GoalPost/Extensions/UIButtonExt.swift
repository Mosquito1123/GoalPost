//
//  UIButtonExt.swift
//  GoalPost
//
//  Created by James Volmert on 7/14/19.
//  Copyright © 2019 James Volmert. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.9607843137, green: 1, blue: 0.9803921569, alpha: 1)
        layer.borderColor = #colorLiteral(red: 0.262745098, green: 0.8039215686, blue: 0.5019607843, alpha: 1)
        layer.borderWidth = 2.0
        self.accessibilityTraits = .selected
    }
    
    func deselectColor() {
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.borderWidth = 0.0
        self.accessibilityTraits = .notEnabled
    }
}
