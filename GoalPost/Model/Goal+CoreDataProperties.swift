//
//  Goal+CoreDataProperties.swift
//  GoalPost
//
//  Created by Mosquito1123 on 16/07/2019.
//  Copyright © 2019 James Volmert. All rights reserved.
//
//

import Foundation
import CoreData


extension Goal {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Goal> {
        return NSFetchRequest<Goal>(entityName: "Goal")
    }

    @NSManaged public var goalDescription: String?
    @NSManaged public var goalDescriptionValue: Int32
    @NSManaged public var goalProgress: Int32
    @NSManaged public var goalType: String?

}
