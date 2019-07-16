//
//  GoalsVC
//  GoalPost
//
//  Created by James Volmert on 7/8/19.
//  Copyright © 2019 James Volmert. All rights reserved.
//

import UIKit
import CoreData.NSFetchRequest

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addGoalPressed(_ sender: Any) {
        
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else { return }
        presentDetail(createGoalVC)
    }
    var goals:[Goal]?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
        
        
        
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let fetchRequest: NSFetchRequest = Goal.fetchRequest()
        do {
            let result = try (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext.fetch(fetchRequest)
            self.goals = result
            self.tableView.reloadData()
        } catch let error {
            print(error)
        }
    }


}


extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.goals?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell" ) as? GoalCell else { return UITableViewCell() }
        let goal = self.goals?[indexPath.row]
        switch goal?.goalType ?? "" {
        case "Long-term":
            cell.configureCell(description: goal?.goalDescription ?? "", type: .longTerm, goalProgressAmt: Int(goal?.goalProgress ?? 0))

        case "Short-term":
            cell.configureCell(description: goal?.goalDescription ?? "", type: .shortTerm, goalProgressAmt: Int(goal?.goalProgress ?? 0))

        default:
            cell.configureCell(description: goal?.goalDescription ?? "", type: .shortTerm, goalProgressAmt: Int(goal?.goalProgress ?? 0))

        }
        
        return cell
    }
}
