//
//  TestExtensionsMasterView.swift
//  TestPods
//
//  Created by Zsolt Pete on 2017. 11. 18..
//  Copyright © 2017. Zsolt Pete. All rights reserved.
//

import UIKit
import CYExtensions

class TestExtensionsMasterView: UIView {

    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var testView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        testView.backgroundColor = UIColor(rgb: 0xFF0000)
        testView.addBorder(color: UIColor(red: 0, green: 255, blue: 0), width: 5.0)
        testView.roundCorners(corners: [.bottomLeft, .topLeft], radius: 10.0)
        testView.layer.masksToBounds = false
        testView.addShadow(shadowColor: UIColor(rgb: 0x0000FF).cgColor, shadowOffset: CGSize(width: 10.0, height: 10.0), shadowOpacity: 0.8, shadowRadius: 3.0)
        testView.addShadow()
    }
}
