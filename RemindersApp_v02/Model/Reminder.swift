//
//  Reminder.swift
//  RemindersApp_v02
//
//  Created by d.putans on 30/05/2020.
//  Copyright © 2020 d.putans. All rights reserved.
//

import Foundation

class Reminder {
    var title: String
    var date: Date
    var isCompleted: Bool
    
    init(title: String, date: Date, isCompleted: Bool) {
        self.title = title
        self.date = date
        self.isCompleted = isCompleted
    }
}
