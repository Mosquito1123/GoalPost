//
//  MaterialText.swift
//  GoalPost
//
//  Created by James Volmert on 7/11/19.
//  Copyright © 2019 James Volmert. All rights reserved.
//

import UIKit

class MaterialText: UITextView {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setUpTextView()
       
    }
    
    
    private func setUpTextView() {
        layer.shadowColor = #colorLiteral(red: 0.6536212564, green: 0.6536368728, blue: 0.6536284685, alpha: 1)
        layer.shadowOffset = CGSize(width: 0.5, height: 6.0)
        layer.shadowRadius = 6.0
        layer.shadowOpacity = 1.0
        layer.masksToBounds = false
    }
}
