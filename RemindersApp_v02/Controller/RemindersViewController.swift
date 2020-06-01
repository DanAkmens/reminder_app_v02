//
//  RemindersViewController.swift
//  RemindersApp_v02
//
//  Created by d.putans on 31/05/2020.
//  Copyright © 2020 d.putans. All rights reserved.
//

import UIKit

class RemindersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ReminderService.shared.getCoint()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Deque the cell from reuse pool
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReminderCell") as! ReminderCell
        
        // Get the reminder for the given index path
        let reminder = ReminderService.shared.getReminder(index: indexPath.row)
        
        // Update the cell base on the reminder object
        cell.update(reminder: reminder)
        
        // Return cell
        return cell
    }
}
