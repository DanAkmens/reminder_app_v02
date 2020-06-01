//
//  ReminderCell.swift
//  RemindersApp_v02
//
//  Created by d.putans on 31/05/2020.
//  Copyright © 2020 d.putans. All rights reserved.
//

import UIKit

class ReminderCell: UITableViewCell {
    
    @IBOutlet weak var isCompletedView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    func update(reminder: Reminder) {
        titleLabel.text = reminder.title
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yy hh:mma"
        dateLabel.text = dateFormatter.string(from: reminder.date)
        
        if reminder.isCompleted {
            isCompletedView.backgroundColor = UIColor.green
        } else {
            isCompletedView.backgroundColor = UIColor.white
        }
    }
}
