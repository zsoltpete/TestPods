//
//  Alertable.swift
//  TestPods
//
//  Created by Zsolt Pete on 2017. 11. 24..
//  Copyright © 2017. Zsolt Pete. All rights reserved.
//

import Foundation
import UIKit

protocol Alertable {
    
    func present(_ alert: Alert)
    func style(alertController: UIAlertController)
}

extension Alertable where Self: UIViewController{
    
    func present(_ alert: Alert){
        let alertController = AlertManager.shared.createPopUp(alert: alert)
        style(alertController: alertController)
        self.present(alertController, animated: true, completion: nil)
    }
}
