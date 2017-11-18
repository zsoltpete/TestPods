//
//  UIImage+Extensions.swift
//  insimu-ios
//
//  Created by Eszenyi Gabor on 2017. 07. 12..
//  Copyright © 2017. CodeYard. All rights reserved.
//

import UIKit

extension CALayer {
    
    public func doMask(by imageMask: UIImage) {
        let maskLayer = CAShapeLayer()
        maskLayer.bounds = CGRect(x: 0, y: 0, width: imageMask.size.width, height: imageMask.size.height)
        bounds = maskLayer.bounds
        maskLayer.contents = imageMask.cgImage
        maskLayer.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
        mask = maskLayer
    }
    
    public func toImage() -> UIImage?{
        UIGraphicsBeginImageContextWithOptions(bounds.size,
                                               isOpaque,
                                               UIScreen.main.scale)
        guard let context = UIGraphicsGetCurrentContext() else {
            UIGraphicsEndImageContext()
            return nil
        }
        render(in: context)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
