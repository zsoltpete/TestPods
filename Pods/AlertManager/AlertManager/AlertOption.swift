//
//  AlertOption.swift
//  TestPods
//
//  Created by Zsolt Pete on 2017. 11. 24..
//  Copyright © 2017. Zsolt Pete. All rights reserved.
//

import Foundation

public class AlertOption {
    
    var title: String
    var action: (() -> Void)?
    
    public init(title: String = "", action: (() -> Void)?) {
        self.title = title
        self.action = action
    }
    
}
