//
//  ReminderService.swift
//  RemindersApp_v02
//
//  Created by d.putans on 30/05/2020.
//  Copyright © 2020 d.putans. All rights reserved.
//

import Foundation

class ReminderService {
    // create a singleton
    static let shared = ReminderService()
    
    // restrict the access for a property only to class
    private var reminders = [Reminder]()
    
    // Create
    func create(reminder: Reminder) {
        // Add reminder to reminders array in a sorted order
        var indexToInsert: Int?
        // will compare elements date with reminders date
        for (index, element) in reminders.enumerated() {
            // element date - 01/02/2020
            // reminder date - 01/01/2020  in that case we want to insert reminder before the element
            if element.date.timeIntervalSince1970 > reminder.date.timeIntervalSince1970 {
                indexToInsert = index
                break
            }
        }
        // If we have indexToInsert, then we use it
        if let indexToInsert = indexToInsert {
            reminders.insert(reminder, at: indexToInsert)
            
        // If not, then we would append the reminder to the end of our array
        } else {
            reminders.append(reminder)
        }
      
        reminders.append(reminder)
    }
    
    // Update
    func update(reminder: Reminder, index: Int) {
        reminders[index] = reminder
    }
    
    // Get # of reminders
    func getCoint() -> Int {
        return reminders.count
    }
    
    // Get a specific reminder
    func getReminder(index: Int) -> Reminder {
        return reminders[index]
    }
    
    // Toggle completed status of reminder
    func toggleCompleted(index: Int) {
        let reminder = getReminder(index: index)
        reminder.isCompleted = !reminder.isCompleted
    }
    
    // Get the list of reminders
    func getReminders() -> [Reminder]{
        return reminders
    }
    
    // Delete the reminder
    func delete(index: Int) {
        reminders.remove(at: index)
    }
    
    // Get the favorited reminder
    func getFavoritedReminder() -> Reminder? {
        return reminders.first
    }
    
    
}
