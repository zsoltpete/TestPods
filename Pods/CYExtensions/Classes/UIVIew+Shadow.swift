//
//  UIView+Shadow.swift
//  insimu-ios
//
//  Created by Ujlaki Imre on 2017. 06. 30..
//  Copyright © 2017. CodeYard. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var shadow: Bool {
        get {
            return layer.shadowOpacity > 0.0
        }
        set {
            if newValue == true {
                self.addShadow()
            }
        }
    }
    
    /**
     Add shadow around the view.
     
     - parameter shadowColor: The color of the shadow
     - parameter shadowOffset: The offset of the shadow
     - parameter shadowOpacity: The opacity of the shadow
     - parameter shadowRadius: The radius of the shadow
     */
    public func addShadow(shadowColor: CGColor = UIColor.black.cgColor,
                          shadowOffset: CGSize = CGSize(width: 0.0, height: 1.0),
                          shadowOpacity: Float = 0.12,
                          shadowRadius: CGFloat = 1.0) {
        layer.shadowColor = shadowColor
        layer.shadowOffset = shadowOffset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
    }
}
