//
//  AlertViewController.swift
//  TestPods
//
//  Created by Zsolt Pete on 2017. 11. 24..
//  Copyright © 2017. Zsolt Pete. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @IBAction func showQuestion(_ sender: Any) {
        self.showAlert()
    }
    
    @IBAction func showChoose(_ sender: Any) {
        self.showChoose()
    }
}

extension AlertViewController: Alertable {
    
    func style(alertController: UIAlertController) {
        alertController.view.tintColor = .red
    }
    
    func showAlert(){
        let actions = [
            AlertOption(title: "Yes", action: {
                print("YesPushed")
            }),
            AlertOption(title: "No", action: {
                print("NoPushed")
            }),
            ]
        let alert = Alert(title: "Warning", message: "IS it good?", actions: actions)
        self.present(alert)
    }
    
    func showChoose(){
        let actions = [
            
            AlertOption(title: "First", action: {
                print("FirstPushed")
            }),
            AlertOption(title: "Second", action: {
                print("SecondPushed")
            }),
            AlertOption(title: "Third", action: {
                print("ThirdPushed")
            }),
            ]
        let alert = Alert(title: "Choose!", message: "Which is the best answer?", actions: actions)
        self.present(alert)
        
    }
    
}
