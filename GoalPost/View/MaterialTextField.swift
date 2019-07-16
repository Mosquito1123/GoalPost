//
//  MaterialTextField.swift
//  GoalPost
//
//  Created by James Volmert on 7/15/19.
//  Copyright © 2019 James Volmert. All rights reserved.
//

import UIKit

class MaterialTextField: UITextField {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setUpTextField()
    }
    
    private func setUpTextField() {
        layer.shadowColor = #colorLiteral(red: 0.6536212564, green: 0.6536368728, blue: 0.6536284685, alpha: 1)
        layer.shadowOffset = CGSize(width: 0.5, height: 6.0)
        layer.shadowRadius = 6.0
        layer.shadowOpacity = 1.0
        layer.masksToBounds = false
        
        self.textColor = #colorLiteral(red: 0.262745098, green: 0.8039215686, blue: 0.5019607843, alpha: 1)
    }

}
