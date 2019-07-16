//
//  GoalCell.swift
//  GoalPost
//
//  Created by James Volmert on 7/9/19.
//  Copyright © 2019 James Volmert. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLabel: UILabel!
    
    @IBOutlet weak var timeDescriptionLabel: UILabel!
    
    @IBOutlet weak var timeInvolvementNumber: UILabel!
    
    func configureCell(description: String, type: GoalType, goalProgressAmt: Int) {
        
        self.goalDescriptionLabel.text = description
        self.timeDescriptionLabel.text = type.rawValue
        self.timeInvolvementNumber.text = String(describing: goalProgressAmt)
        
    }
}
