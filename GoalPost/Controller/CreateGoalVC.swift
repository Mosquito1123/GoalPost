//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by James Volmert on 7/11/19.
//  Copyright © 2019 James Volmert. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: MaterialButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType : GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColor()
        longTermBtn.deselectColor()
        goalTextView.delegate = self
    }
    

    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0.262745098, green: 0.8039215686, blue: 0.5019607843, alpha: 1)
    }
    
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalsVC") as? FinishGoalsVC else { return }
            finishGoalVC.initData(description: goalTextView.text!, goalType: goalType)
            presentDetail(finishGoalVC)
        }
    }
    
    @IBAction func shortBtnPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.deselectColor()
        
    }
    @IBAction func longBtnPressed(_ sender: Any) {
        goalType = .longTerm
        longTermBtn.setSelectedColor()
        shortTermBtn.deselectColor()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        // go back to GoalVC
        dismissDetail()
    }
    
}
