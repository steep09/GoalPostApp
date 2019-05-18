//
//  GoalCell.swift
//  AppGoalPost
//
//  Created by Stephenson Ang on 15/05/2019.
//  Copyright © 2019 Stephenson Ang. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    
    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(goal: Goal) {
        self.goalDescriptionLbl.text = goal.goalDescription
        self.goalTypeLbl.text = goal.goalType
        self.goalProgressLbl.text = String(goal.goalProgress)
    }
}
