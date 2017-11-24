//
//  Alert.swift
//  TestPods
//
//  Created by Zsolt Pete on 2017. 11. 24..
//  Copyright © 2017. Zsolt Pete. All rights reserved.
//

import Foundation

class Alert {
    
    var title: String
    var message: String
    var actions: [AlertOption]
    
    init(title: String = "", message: String = "", actions: [AlertOption]) {
        self.title = title
        self.message = message
        self.actions = actions
    }
    
}
