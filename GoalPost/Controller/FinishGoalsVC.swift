//
//  FinishGoalsVC.swift
//  GoalPost
//
//  Created by James Volmert on 7/15/19.
//  Copyright © 2019 James Volmert. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalsVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: MaterialButton!
    @IBOutlet weak var pointsTextField: UITextField!
    var goalDescription: String!
    var goalType: GoalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self
       
    }
    
    func initData(description: String, goalType: GoalType) {
        self.goalDescription = description
        self.goalType = goalType
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    @IBAction func createGoalPressed(_ sender: Any) {
        // pass data into core data
        guard let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext else {return}
        let goal = NSEntityDescription.insertNewObject(forEntityName: "Goal", into: context) as! Goal
        goal.goalDescription = self.goalDescription
        switch self.goalType ?? .shortTerm{
        case .longTerm:
            goal.goalType = "Short-term"
        case .shortTerm:
            goal.goalType = "Long-term"
        }
        
        goal.goalProgress = Int32(pointsTextField.text ?? "0") ?? 0
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
//        dismissDetail()

    }
    
    
}
