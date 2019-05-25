//
//  CoreEasyAnimationView.swift
//  CoreEasyAnimation
//
//  Created by Kai Luu on 5/10/19.
//  Copyright © 2019 Kai Luu. All rights reserved.
//

import UIKit
import Foundation

public class CoreEasyAnimation {

    public class func shakeView(textfieldIsWrong shakeView: UIView) {
        let shake = CABasicAnimation(keyPath: "position")
        let xDelta = CGFloat(5)
        shake.duration = 0.15
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let from_point = CGPoint(x: shakeView.center.x - xDelta, y: shakeView.center.y)
        let from_value = NSValue(cgPoint: from_point)
        
        let to_point = CGPoint(x: shakeView.center.x + xDelta, y: shakeView.center.y)
        let to_value = NSValue(cgPoint: to_point)
        
        shake.fromValue = from_value
        shake.toValue = to_value
        shake.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        shakeView.layer.add(shake, forKey: "position")
    }

}
