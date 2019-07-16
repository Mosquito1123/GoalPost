//
//  MaterialButton.swift
//  GoalPost
//
//  Created by James Volmert on 7/11/19.
//  Copyright © 2019 James Volmert. All rights reserved.
//

import UIKit

class MaterialButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpButton()
    }
    
    func setUpButton() {
        layer.borderColor = #colorLiteral(red: 0.262745098, green: 0.8039215686, blue: 0.5019607843, alpha: 1)
        layer.borderWidth = 2
        
        setTitleColor(#colorLiteral(red: 0.262745098, green: 0.8039215686, blue: 0.5019607843, alpha: 1), for: .normal)
        setTitleColor(#colorLiteral(red: 0.262745098, green: 0.8039215686, blue: 0.5019607843, alpha: 1), for: .selected)
        self.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        layer.shadowColor = #colorLiteral(red: 0.6536212564, green: 0.6536368728, blue: 0.6536284685, alpha: 1)
        layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius = 6.0
        layer.shadowOpacity = 1.0
        
    }
    

}
