//
//  UIView.swift
//  TimeTable
//
//  Created by Mr.Robo on 11/28/17.
//  Copyright © 2017 Mr.Robo. All rights reserved.
//

import Foundation
import UIKit
extension UIView {
    
    @IBInspectable var cornerRadiusBtn: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidthBtn: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColorBtn: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable var isShadow:Bool{
        get{
            return self.isShadow
        }
        
        set{
            if newValue{
                self.layer.shadowOpacity = 0.2
                self.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
                self.layer.shadowRadius = 3.0
                self.layer.shadowColor = UIColor.black.cgColor
//                self.layer.shadowRadius = 1
//                self.layer.cornerRadius = self.layer.shadowRadius
                
            }
            
        }
        
    }
    
    var textFieldsInView: [UITextView] {
        return subviews
            .filter ({ !($0 is UITextView) })
            .reduce (( subviews.compactMap { $0 as? UITextView }), { summ, current in
                return summ + current.textFieldsInView
            })
    }
    
    var textFiledIsActive:Bool{
        return  selectedTextField != nil ? true : false
    }
    
    var selectedTextField: UITextView? {
        return textFieldsInView.filter { $0.isFirstResponder }.first
    }
    
    func setGradientBackground(colorOne:UIColor,colorTwo:UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor,colorTwo.cgColor]
        gradientLayer.locations = [0.0,1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 0)
    
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func setGradientBackground(colorOne:UIColor,colorTwo:UIColor,borderRadius:CGFloat,isShadow:Bool) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor,colorTwo.cgColor]
        gradientLayer.locations = [0.0,1.0]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer.cornerRadius = borderRadius
        layer.insertSublayer(gradientLayer, at:0)
        
    }
    
    // OUTPUT 1
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = .zero
        layer.shadowRadius = 8

        layer.shadowPath = UIBezierPath(rect: CGRect(x: 12, y: 10, width: self.frame.size.width, height: self.frame.size.height)).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    // OUTPUT 2
    func dropShadow(color: UIColor, opacity: Float = 0.7, offSet: CGSize, radius: CGFloat = 8, scale: Bool = true) {
        layer.masksToBounds = true
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: CGRect(x: 10, y: 10, width: self.frame.size.width, height: self.frame.size.height)).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
}

