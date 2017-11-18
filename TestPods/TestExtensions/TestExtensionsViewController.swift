//
//  TestExtensionsViewController.swift
//  TestPods
//
//  Created by Zsolt Pete on 2017. 11. 18..
//  Copyright © 2017. Zsolt Pete. All rights reserved.
//

import UIKit

class TestExtensionsViewController: UIViewController {

    @IBOutlet var masterView: TestExtensionsMasterView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.masterView.imageView.image = self.view.takeScreenshot().maskWithColor(color: UIColor(rgb: 0x0000FF))
        self.hideKeyboardWhenTappedAround()
        self.masterView.testLabel.attributedText = "<h1><u>Alma</u>fa</h1>".html2AttributedString
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(self.getTopController())
    }

}
